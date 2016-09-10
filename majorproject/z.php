<?php
	require 'connect_db.php';
	function calcz($mktab,$varstab,$ys,$ye,$interval,$results,$trendt,$proba){
		$query3='SELECT DISTINCT `index` from `'.$results.'` where 1';
		$query_run3=mysql_query($query3);
		$indices=array();
		while($var=mysql_fetch_assoc($query_run3)){
			array_push($indices, $var['index']);
		}

		$query="select distinct `station` from `".$mktab."` where 1";
		$query_run=mysql_query($query);
		while($var=mysql_fetch_assoc($query_run)){
			$stn=$var['station'];
			$query1="select * from `".$mktab."` where `station`='$stn'";
			$query_run1=mysql_query($query1);
			$var1=mysql_fetch_assoc($query_run1);
			$query2="select * from `".$varstab."` where `station`='$stn'";
			$query_run2=mysql_query($query2);
			$var2=mysql_fetch_assoc($query_run2);
			for($i=0;$i<sizeof($indices);$i++){
				$idx=$indices[$i];

				if($var1[$indices[$i]]==0||$var2[$indices[$i]]==0)
					$ans=0;
				else{
					if($var1[$indices[$i]]>0){
						$ans=(($var1[$indices[$i]]-1)/sqrt($var2[$indices[$i]]));
					}else{
						$ans=(($var1[$indices[$i]]+1)/sqrt($var2[$indices[$i]]));
					}
				}

				$isThere=checkComputed3($stn,$trendt,$ys,$ye,$interval);
				if($isThere)
					$query5="UPDATE `".$trendt."` SET `$idx` = '$ans' where `station`='$stn' and `start`='$ys' and `end`='$ye' and `interval`='$interval'";
				else
					$query5="INSERT INTO `".$trendt."`(`station`, `$idx`, `start`, `end`,`interval`) VALUES ('$stn','$ans','$ys','$ye','$interval')";
				
				$query_ui=mysql_query($query5);

				$e=2.718282;
				$pi=3.141593;
				$tem=(-1*$ans*$ans);
				$tem/=2;
				$tem2=2*$pi;
				$prob=(pow($e,$tem)/sqrt($tem2));
				//echo $ans." - ".$stn." - ".$indices[$i]." - ".$prob."<br>";

				$isThere=checkComputed3($stn,$proba,$ys,$ye,$interval);
				if($isThere)
					$query5="UPDATE `".$proba."` SET `$idx` = '$prob' where `station`='$stn' and `start`='$ys' and `end`='$ye' and `interval`='$interval'";
				else
					$query5="INSERT INTO `".$proba."`(`station`, `$idx`, `start`, `end`,`interval`) VALUES ('$stn','$prob','$ys','$ye','$interval')";
				$query_ui=mysql_query($query5);
			}
			//echo "****<br>";
		}
	}

	function checkComputed3($stn,$nam,$ys,$ye,$interval){
		$queryf2="SELECT `station` From `".$nam."` where `station`='$stn' and `start`='$ys' and `end`='$ye' and `interval`='$interval'";
		$queryf2_run = mysql_query($queryf2);
		$isThere=mysql_num_rows($queryf2_run);
		return $isThere;
	}

?>
