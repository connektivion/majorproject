<?php
	include 'connect_db.php';
	include 'ct2.php';
	if(isset($_GET['type'])){
		$type=$_GET['type'];
		if(!empty($type)){
			if($type==1){
				$query="select distinct `index` from `results` where 1";
				$query1="select distinct `station` from `results` where 1";
				$mks='trendt';
				$sen='sen';
				$prob='prob';
			}
			else{
				$query="select distinct `index` from `tresults` where 1";
				$query1="select distinct `station` from `tresults` where 1";
				$mks='ttrendt';
				$sen='sent';
				$prob='tprob';
			}
			$query_run=mysql_query($query);
			while($var=mysql_fetch_assoc($query_run)){
				$idx=$var['index'];
				createTable($idx);
				$query_run1=mysql_query($query1);
				while($var1=mysql_fetch_assoc($query_run1)){
					$stn=$var1['station'];
					$q1="select * from `".$mks."` where `station`='".$stn."'";
					$q2="select * from `".$sen."` where `station`='".$stn."'";
					$q3="select * from `".$prob."` where `station`='".$stn."'";
					$qr1=mysql_query($q1);
					$qr2=mysql_query($q2);
					$qr3=mysql_query($q3);
					while($v1=mysql_fetch_assoc($qr1)){
						$s=$v1['start'];
						$it=$v1['interval'];
						$v=$v1[$idx];
						$txt='mks'.$s.$it;
						$isThere=checkComputed7($stn,$idx);
						if($isThere)
							$query5="UPDATE `".$idx."` SET `$txt` = '$v' where `station`='$stn'";
						else
							$query5="INSERT INTO `".$idx."` (`station`, `$txt`) VALUES ('$stn','v')";
						$query_ui=mysql_query($query5);
					}
					while($v2=mysql_fetch_assoc($qr2)){
						$s=$v2['start'];
						$it=$v2['interval'];
						$v=$v2[$idx];
						$txt='sen'.$s.$it;
						$isThere=checkComputed7($stn,$idx);
						if($isThere)
							$query5="UPDATE `".$idx."` SET `$txt` = '$v' where `station`='$stn'";
						else
							$query5="INSERT INTO `".$idx."` (`station`, `$txt`) VALUES ('$stn','$v')";
						$query_ui=mysql_query($query5);
					}
					while($v3=mysql_fetch_assoc($qr3)){
						$s=$v3['start'];
						$it=$v3['interval'];
						$v=$v3[$idx];
						$txt='prob'.$s.$it;
						$isThere=checkComputed7($stn,$idx);
						if($isThere)
							$query5="UPDATE `".$idx."` SET `$txt` = '$v' where `station`='$stn'";
						else
							$query5="INSERT INTO `".$idx."` (`station`, `$txt`) VALUES ('$stn','$v')";
						$query_ui=mysql_query($query5);
					}

				}
			}
		}
	}
	function checkComputed7($stn,$nam){
		$queryf2="SELECT `station` From `".$nam."` where `station`='$stn'";
		$queryf2_run = mysql_query($queryf2);
		$isThere=mysql_num_rows($queryf2_run);
		return $isThere;
	}
?>