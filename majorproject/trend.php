<?php
	require 'connect_db.php';
	include 'mks.php';
	include 'vars.php';
	include 'z.php';
	include 'createtable.php';
	if(isset($_GET['rant'])){
		$rant=$_GET['rant'];
		if(!empty($rant))
			if($rant==1){
				$pcp='pcp';
				$results='results';
				$trendt='trendt';
				$proba='prob';
				$sen='sen';
			}else{
				$pcp='temp';
				$results='tresults';
				$trendt='ttrendt';
				$proba='tprob';
				$sen='sent';
			}
	}
	if(isset($_GET['years'])&&isset($_GET['interval'])){
		$years=$_GET['years'];
		$interval=$_GET['interval'];
		if(!empty($years)&&!empty($interval)){
			$query="SELECT DISTINCT `year` FROM `$pcp` ORDER BY `year` DESC";
			$query_run=mysql_query($query);
			$var=mysql_fetch_assoc($query_run);
			$last=$var['year'];
			$query="SELECT DISTINCT `year` FROM `$pcp` ORDER BY `year` ASC";
			$query_run=mysql_query($query);
			$var=mysql_fetch_assoc($query_run);
			$start=$var['year'];
			if(($years>=$start)&&(($years+$interval-1)<=$last)){
				$ys=$years;
				$ye=$ys+$interval-1;
				$urls=array();
				$count=0;
				while($ye<=$last&&$ys<=$ye){
					$mksTabName='mks'.$ys.$ye;
					$varsTabName='vars'.$ys.$ye;
					$zTabName='z'.$ys.$ye;
					if($rant==2){
						$mksTabName='mkst'.$ys.$ye;
						$varsTabName='varst'.$ys.$ye;
						$zTabName='zt'.$ys.$ye;
					}
					$queryT="select `station` from `$trendt` where `start` = '$ys' and `end`= '$ye' and `interval`='$interval'";
					$query_run_T=mysql_query($queryT);
					if(mysql_num_rows($query_run_T)==0){
						$urls[$count]='http://localhost/majorproject/temp.php?mksTabName='.$mksTabName.'&varsTabName='.$varsTabName.'&ys='.$ys.'&ye='.$ye.'&interval='.$interval.'&pcp='.$pcp.'&results='.$results.'&trendt='.$trendt.'&proba='.$proba.'&sen='.$sen.'';
						//echo $urls[$count]."<BR>";
						$count++;

					}
					echo $ys." ".$ye." Done!<br>";
					$ys+=$interval;
					$ye+=$interval;
					if($ye>$last)
						$ye=$last;
				}
				if($count){
					include 'RollingCurl.php';
					include 'RollingCurlGroup.php';
					
					function request_callback($response, $info) {	
					    echo $response;
					}

					$rc = new RollingCurl("request_callback");
					$rc->window_size = 70;

					for($i=0;$i<sizeof($urls);$i++) {
						$request = new RollingCurlRequest($urls[$i]);
						$rc->add($request);
					}
					$rc->execute();
				}
			}
		}
	}
?>