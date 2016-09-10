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
			$query="SELECT DISTINCT `interval` from `".$trendt."` where `station`='".$station."' and `start`='".$start."' order by `interval` asc";
			//echo $query;
			$query_run=mysql_query($query);
			echo "<select name='interval' id='interval' class='btn-block form-group'>";
			echo "<option value='NULL'>SELECT interval</option>";
			while($var=mysql_fetch_assoc($query_run))
				echo "<option value='".$var['interval']."'>".$var['interval']."</option>";
			echo "</select>";
		}
	}
?>