<?php
	require "connect_db.php";
	if(isset($_GET['type'])&&isset($_GET['station'])){
		$type=$_GET['type'];
		$station=$_GET['station'];
		if(!empty($station)&&!empty($type)){
			if($type==1)
				$results='trendt';
			else
				$results='ttrendt';
			$query="SELECT DISTINCT `start` from `".$results."` where `station`='$station' order by `start` asc";
			$query_run=mysql_query($query);
			echo "<select name='year' id='year' class='btn-block form-group'>";
				echo "<option value='NULL'>SELECT YEAR START</option>";
				while($var=mysql_fetch_assoc($query_run))
					echo "<option value='".$var['start']."'>".$var['start']."</option>";
			echo "</select>";
		}
	}
	
?>