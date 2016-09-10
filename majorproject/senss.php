<?php
	require 'connect_db.php';

	function sens($ys,$ye,$results,$pcp,$interval,$sen){
		
		$indices=array();
		$query1='select distinct `index` from `'.$results.'` where 1';
		$query_run1=mysql_query($query1);
		while($var=mysql_fetch_assoc($query_run1))
			array_push($indices, $var['index']);

		$year=array();
		$query='select distinct `year` from `'.$pcp.'` where `year`>= '.$ys.' and `year`<='.$ye.'';
		$query_run=mysql_query($query);
		while($var=mysql_fetch_assoc($query_run)){
			array_push($year,$var['year']);
			//echo $var['year']."<br>";
		}

		$query1='select distinct `station` from `'.$results.'` where 1';
		$query_run1=mysql_query($query1);
		while($var1=mysql_fetch_assoc($query_run1)){
			$station=$var1['station'];
			for($x=0;$x<sizeof($indices);$x++){
				$idx=$indices[$x];
				$query='select * from `'.$results.'` where `station`="'.$station.'" and `index`="'.$idx.'"';
				$query_run=mysql_query($query);
				$var=mysql_fetch_assoc($query_run);
				$ans=array();
				for($i=0;$i<sizeof($year)-1;$i++){
					for($j=$i+1;$j<sizeof($year);$j++){
						$slope=($var[$year[$j]]-$var[$year[$i]])/($year[$j]-$year[$i]);
						//echo $slope." - ".$year[$j]." - ".$year[$i]."<br>";
						array_push($ans,$slope);
					}
					//echo "***".$count."<br>";
				}

				sort($ans);

				$n=sizeof($ans)-1;

				if($n%2==0){
					$op=($ans[$n/2]+$ans[($n+2)/2])/2;
				}else{
					$op=$ans[($n+1)/2];
				}

				//echo "n = ".$op." ".$n."<br>";
				$isThere=checkComputed7($station,$sen,$ys,$ye,$interval);
				if($isThere)
					$query5="UPDATE `".$sen."` SET `$idx` = '$op' where `station`='$station' and `start`='$ys' and `end`='$ye' and `interval`='$interval'";
				else
					$query5="INSERT INTO `".$sen."` (`station`, `$idx`, `start`, `end`,`interval`) VALUES ('$station','$op','$ys','$ye','$interval')";
				$query_ui=mysql_query($query5);

			}
			//if()
			
		}
	}

	function checkComputed7($stn,$nam,$ys,$ye,$interval){
		$queryf2="SELECT `station` From `".$nam."` where `station`='$stn' and `start`='$ys' and `end`='$ye' and `interval`='$interval'";
		$queryf2_run = mysql_query($queryf2);
		$isThere=mysql_num_rows($queryf2_run);
		return $isThere;
	}
?>                                                                                                                                                                                                                                                                    