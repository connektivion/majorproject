
<?php
	require "connect_db.php";
	if(isset($_GET['station'])&&isset($_GET['start'])&&isset($_GET['type'])){
		$station=$_GET['station'];
		$start=$_GET['start'];
		$type=$_GET['type'];
		if(!empty($station)&&!empty($start)){
			if($type==1){
				$trendt='trendt';
				$results='results';
			}
			else{
				$trendt='ttrendt';
				$results='tresults';
			}
			$query="SELECT DISTINCT `index` from `".$results."` where 1";
			//echo $query;
			$query_run=mysql_query($query);
			echo "<select name='index' id='index' class='btn-block form-group'>";
			echo "<option value='NULL'>SELECT index</option>";
			while($var=mysql_fetch_assoc($query_run))
				echo "<option value='".$var['index']."'>".$var['index']."</option>";
			echo "</select>";
		}
	}
?>