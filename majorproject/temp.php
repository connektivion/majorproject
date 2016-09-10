<?php
	require 'connect_db.php';
	include 'mks.php';
	include 'vars.php';
	include 'z.php';
	include 'createtable.php';
	include 'senss.php';

	if(isset($_GET['mksTabName'])&&isset($_GET['varsTabName'])&&isset($_GET['ys'])&&isset($_GET['ye'])&&isset($_GET['interval'])&&isset($_GET['pcp'])&&isset($_GET['results'])&&isset($_GET['trendt'])&&isset($_GET['proba'])&&isset($_GET['sen'])){
		$mksTabName=$_GET['mksTabName'];
		$varsTabName=$_GET['varsTabName'];
		$ys=$_GET['ys'];
		$ye=$_GET['ye'];
		$interval=$_GET['interval'];
		$pcp=$_GET['pcp'];
		$results=$_GET['results'];
		$trendt=$_GET['trendt'];
		$proba=$_GET['proba'];
		$sen=$_GET['sen'];
		if(!empty($mksTabName)&&!empty($varsTabName)&&!empty($ys)&&!empty($ye)&&!empty($interval)){
			createTable(1,$mksTabName,$results,0);
			createTable(2,$varsTabName,$results,0);
			calcs($mksTabName,$ys,$ye,$results,$pcp);
			calcv($varsTabName,$ys,$ye,$results);
			calcz($mksTabName,$varsTabName,$ys,$ye,$interval,$results,$trendt,$proba);
			sens($ys,$ye,$results,$pcp,$interval,$sen);			
			//echo "oKKKKK<br>";
		}
	}
?>
