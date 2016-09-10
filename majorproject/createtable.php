<?php
	require 'connect_db.php';

	function createTable($type,$name,$results,$st){
		$query3='SELECT DISTINCT `index` from `'.$results.'` where 1';
		$query_run3=mysql_query($query3);
		$indices=array();
		if($st==1)
			$text="( `start` integer(10) , `end` integer(10) , `interval` integer(10) ,`station` text(100) ,";
		else
			$text="( `station` text(100) ,";
		$tot=mysql_num_rows($query_run3);
		$it=1;
		while($var=mysql_fetch_assoc($query_run3)){
			$idx=$var['index'];
			array_push($indices, $idx);
			if($type==2)
				$text.="`".$idx."` float";
			else
				$text.="`".$idx."` integer(11)";
			if($it<$tot){
				$text.=" , ";
			}
			$it++;
		}
		$text.=")";

		$query2="CREATE TABLE IF NOT EXISTS `$name` $text";
		$query_run2=mysql_query($query2);
		if($query_run2)
			echo "created!<br>";
	}

	//createTable(2,'trendt','results',1);
	// createTable(2,'ttrendt','tresults');
	// createTable(2,'prob','results');
	// createTable(2,'tprob','tresults');
	//echo "ok";

?>