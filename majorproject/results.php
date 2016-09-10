<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<?php
	require "connect_db.php";
	echo "<div class='container'><h4>COMPARE BETWEEN STATIONS</h4>";
	if(isset($_GET['type'])){
		$type=$_GET['type'];
		if(!empty($type)){
			if($type==1){
				$results='results';
			}else{
				$results='tresults';
			}
			$query='select distinct `station` from `'.$results.'` where 1';
			$query_run=mysql_query($query);
			echo "<select name='station' id='station' class='btn-block form-group'>";
			echo "<option value='NULL'>SELECT SOURCE</option>";
			while($var=mysql_fetch_assoc($query_run)){
				echo "<option value='".$var['station']."'>".$var['station']."</option>";
			}
			echo "</select></div>";
		}
	}
?>
<div class="container">
	<div class="st2"></div>
	<div class="interval"></div>
	<div class="indices"></div>
	<div class="tabel"></div>
	<div class="clearb"></div>
	<div class="row">
		<div class="col-md-6">
			<canvas id="myChart1" width="400" height="400"></canvas>
		</div>
		<div class="col-md-6">
			<canvas id="myChart2" width="400" height="400"></canvas>
		</div>
	</div>
	<div class="row">
		<h5>&nbsp;</h5>
	</div>
	<div class="row"></div>
		<div class="col-md-6">
			<canvas id="myChart3" width="400" height="400"></canvas>
		</div>
		<div class="col-md-6">
			<canvas id="myChart4" width="400" height="400"></canvas>
		</div>
	<div class="row"></div>
</div>
<script src="js/jquery.js"></script>
<script src="js/chart.min.js"></script>

<script type="text/javascript">
	var md,inter,idx;
	var myLineChart1,myLineChart2,myLineChart3,myLineChart4;
	var clearCanvas=function(){
		if(myLineChart1!=undefined){
			myLineChart1.destroy();
		}
		if(myLineChart2!=undefined){
			myLineChart2.destroy();
		}
		if(myLineChart3!=undefined){
			myLineChart3.destroy();
		}
		if(myLineChart4!=undefined){
			myLineChart4.destroy();
		}
	}
	$(document).ready(function(){
		var type=<?php echo $type; ?>;
		$('#station').on('change',function(){
			var station=$(this).val();
			$('.st2').html("");
			clearCanvas();
			if(station!="NULL"){
				$.ajax({
					url:'alln.php',
					data:'type='+type+'&station='+station,
					success:function(data){
						//console.log(data);
						$('.st2').append(data);
					}
				});
			}
		});

		$(".st2").on('change','#year',function(){
			var station=$('#station').val();
			var year=$(this).val();
			$('.interval').html("");
			clearCanvas();
			if(station!="NULL" && year!="NULL"){
				$.ajax({
					url:'commi.php',
					data:'type='+type+'&start='+year+'&station='+station,
					success:function(data){
						$('.interval').append(data);
					}
				});
			}
		});

		$(".interval").on('change','#interval',function(){
			var station=$('#station').val();
			var year=$('#year').val();
			var interval=$(this).val();
			$('.indices').html("");
			clearCanvas();
			if(station!="NULL" && year!="NULL"){
				$.ajax({
					url:'indices.php',
					data:'type='+type+'&start='+year+'&station='+station,
					success:function(data){
						$('.indices').append(data);
					}
				});
			}
		});

		$(".indices").on('change','#index',function(){
			var station=$('#station').val();
			var year=$('#year').val();
			var interval=$('#interval').val();
			var index=$(this).val();
			$('.tabel').html("");
			clearCanvas();
			if(station!="NULL" && year!="NULL"){
				$.ajax({
					url:'vals.php',
					data:'type='+type+'&start='+year+'&station='+station+'&interval='+interval+'&index='+index,
					success:function(data){
						data=$.parseJSON(data);
						console.log(data);
						maketable(data,station,index,interval);
						for(var i=0;i<data.years.length;i++){
							var yr=data.years[i];
							console.log(yr)
							var text='myChart'+(i+1);
							creategraph(yr,text,i+1);
						}
					}
				});
			}
		});

	$('.clearb').on('click','button',function(){
		clearCanvas();
	})

	});
	var maketable=function(data,station,index,interval){
		md=data;
		inter=interval;
		idx=index;
		$('.tabel').append("<table bordered class='table table-bordered'><tr><th>station</th><th>index</th><th>year</th><th>interval</th><th>mk trend (z)</th><th>probabilty mk f(z)</th><th>significance of mk f(z) &gt; .05</th><th>senslope trend Q &gt; 0</th><th>graph</th></tr></table>");
		for(var i=0;i<data.years.length;i++){
			var yr=data.years[i];
			var mk=data['mks'][yr];
			var pr=data['prob'][yr];
			var sig=pr>=0.05?'YES':'NO';
			var sl=data['slope'][yr];
			var mkt=mk>0?'INCREASING':'DECREASING';
				if(mk==0)
					mkt="CANT SAY";
			var slt=sl>0?'INCREASING':'DECREASING';
				if(sl==0)
					slt="CANT SAY";
			var tcl="";
			if(mkt=='INCREASING'&&slt=='INCREASING'&&pr>=0.05)
				tcl="bg-success";
			if(mkt=='DECREASING'&&slt=='DECREASING'&&pr>=0.05)
				tcl="bg-danger";
			$('.table tr:last').after("<tr class='"+tcl+"''><td>"+station+"</td><td>"+index+"</td><td>"+yr+"</td><td>"+interval+"</td><td>"+mkt+" ("+mk+")</td><td>"+pr+"</td><td>"+sig+"</td><td>" +slt+" ("+sl+")</td><td><button class='btn btn-primary' onclick=creategraph("+yr+");>Plot!</button></td></tr>");
		}
		//$('.table tr:last').append("</tbody></table>");

	}
	function linearRegression(y,x){
		var lr = {};
		var n = y.length;
		var sum_x = 0;
		var sum_y = 0;
		var sum_xy = 0;
		var sum_xx = 0;
		var sum_yy = 0;
		
		for (var i = 0; i < y.length; i++) {
			
			sum_x += x[i];
			sum_y += y[i];
			sum_xy += (x[i]*y[i]);
			sum_xx += (x[i]*x[i]);
			sum_yy += (y[i]*y[i]);
		} 
		
		lr['slope'] = (n * sum_xy - sum_x * sum_y) / (n*sum_xx - sum_x * sum_x);
		lr['intercept'] = (sum_y - lr.slope * sum_x)/n;
		lr['r2'] = Math.pow((n*sum_xy - sum_x*sum_y)/Math.sqrt((n*sum_xx-sum_x*sum_x)*(n*sum_yy-sum_y*sum_y)),2);
		
		return lr;
	}
	var creategraph=function(year,chartId,type){
		// if(myLineChart!=undefined){
		// 		myLineChart.destroy();
		// }
		year=parseInt(year);
		inter=parseInt(inter);
		upper=parseInt(year+inter);
		var y1=[];
		var x1=[];
		var xax=[];
		var count=0;
		for(i=year;i<upper;i++){
			if(md.vals[i]==undefined)
				break;
			x1.push(count++);
			xax.push(parseInt(i));
			y1.push(parseInt(md.vals[i]));
		}
		var reg=[];
		var lr=linearRegression(y1,x1);
		for(i=0;i<count;i++){
			y2=lr.slope*i+lr.intercept;
			reg.push(y2);
		}	

		var ctx = document.getElementById(chartId).getContext("2d");
		var data = {
			labels: xax,
			datasets: [
				{
					label: "original",
					fillColor: "rgba(220,220,220,0.2)",
					strokeColor: "rgba(220,220,220,1)",
					pointColor: "rgba(220,220,220,1)",
					pointStrokeColor: "#fff",
					pointHighlightFill: "#fff",
					pointHighlightStroke: "rgba(220,220,220,1)",
					data: y1
				},
				{
					label: "approximate regression",
					fillColor: "rgba(151,187,205,0)",
					strokeColor: "rgba(151,187,205,1)",
					pointColor: "rgba(151,187,205,0)",
					pointStrokeColor: "#fff",
					pointHighlightFill: "#fff",
					pointHighlightStroke: "rgba(151,187,205,1)",
					data: reg
				}
			]
		};
		if(type==1)
			myLineChart1 = new Chart(ctx).Line(data, {bezierCurve: false});
		if(type==2)
			myLineChart2 = new Chart(ctx).Line(data, {bezierCurve: false});
		if(type==3)
			myLineChart3 = new Chart(ctx).Line(data, {bezierCurve: false});
		if(type==4)
			myLineChart4 = new Chart(ctx).Line(data, {bezierCurve: false});
		$('.clearb').html('<h4><B>Please hit clear button before changing any input feilds</B></h4>');
		$('.clearb').append("<button id='clearChart'>Clear</button>")
	}
	
</script>