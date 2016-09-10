<?php
	require "connect_db.php";
	if(isset($_GET['station'])&&isset($_GET['start'])&&isset($_GET['type'])&&isset($_GET['interval'])&&isset($_GET['index'])){
		$station=$_GET['station'];
		$start=$_GET['start'];
		$type=$_GET['type'];
		$interval=$_GET['interval'];
		$index=$_GET['index'];
		if(!empty($station)&&!empty($start)){
			if($type==1){
				$trendt='trendt';
				$proba='prob';
				$sen='sen';
				$results='results';
				$pcp='pcp';
			}
			else{
				$trendt='ttrendt';
				$proba='tprob';
				$sen='sent';
				$results='tresults';
				$pcp='temp';
			}
			class stdObject{
				public function __construct(array $arguments = array()) {
					if (!empty($arguments)) {
						foreach ($arguments as $property => $argument) {
							$this->{$property} = $argument;
						}
					}
				}
				public function __call($method, $arguments) {
					$arguments = array_merge(array("stdObject" => $this), $arguments); // Note: method argument 0 will always referred to the main class ($this).
					if (isset($this->{$method}) && is_callable($this->{$method})) {
						return call_user_func_array($this->{$method}, $arguments);
					} else {
						throw new Exception("Fatal error: Call to undefined method stdObject::{$method}()");
					}
				}
			}
			$op=array();
			$mktrend=array();
			$prob=array();
			$slope=array();
			$vals=array();
			$years=array();

			$query1="SELECT * from `".$trendt."` where `station`='".$station."' and (`start`-".$start.")%".$interval." = 0 and `interval`=".$interval." and `start` >= ".$start."";
			$query_run1=mysql_query($query1);
			
			while($var=mysql_fetch_assoc($query_run1)){
				$mktrend[$var['start']]=$var[$index];
				array_push($years,$var['start']);
			}
			sort($years);

			$query1="SELECT * from `".$proba."` where `station`='".$station."' and (`start`-".$start.")%".$interval." = 0 and `interval`=".$interval."";
			//echo $query1."<br>";
			$query_run1=mysql_query($query1);
			
			while($var=mysql_fetch_assoc($query_run1)){
				$prob[$var['start']]=$var[$index];
			}

			$query1="SELECT * from `".$sen."` where `station`='".$station."' and (`start`-".$start.")%".$interval." = 0 and `interval`=".$interval."";
			$query_run1=mysql_query($query1);
			
			while($var=mysql_fetch_assoc($query_run1)){
				$slope[$var['start']]=$var[$index];
			}

			$query="SELECT DISTINCT `year` FROM `".$pcp."` ORDER BY `year` DESC";
			$query_run=mysql_query($query);
			$var=mysql_fetch_assoc($query_run);
			$last=$var['year'];

			$query1="SELECT * from `".$results."` where `station`='".$station."' and `index` = '".$index."'";
			$query_run1=mysql_query($query1);
			
			$var=mysql_fetch_assoc($query_run1);
			for($x=$start;$x<=$last;$x++)
				$vals[$x]=$var[$x];

			$op['mks']=$mktrend;
			$op['prob']=$prob;
			$op['slope']=$slope;
			$op['vals']=$vals;
			$op['years']=$years;
			echo json_encode($op);
		}
	}
?>