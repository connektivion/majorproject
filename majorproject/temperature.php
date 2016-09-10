<?php
	require 'connect_db.php';
	$query="SELECT DISTINCT(STATION) FROM `temp` WHERE 1";
	
	$query1_run=mysql_query($query);

	while($var1=mysql_fetch_assoc($query1_run)){
		$stn=$var1['STATION'];

		$query2="SELECT DISTINCT(year) FROM `temp` WHERE `STATION`='$stn'";
		$query2_run=mysql_query($query2);

		while($var2=mysql_fetch_assoc($query2_run)){
			$yr=$var2['year'];
			//greaterThan(25,$stn,$yr,$yr+1,'SU');
			//greaterThan(20,$stn,$yr,$yr+1,'TR');
			//DTR($stn,$yr,$yr+1,'DTR');
		}
	}


	function greaterThan($val,$stn,$yrs,$yre,$nam){
		if($nam=='SU')
			$queryf1="SELECT `MAX` From `temp` where `STATION`='$stn' AND `year`>='$yrs' AND `year`<'$yre' AND `MAX`>='$val'";
		else
			$queryf1="SELECT `MIN` From `temp` where `STATION`='$stn' AND `year`>='$yrs' AND `year`<'$yre' AND `MIN`>='$val'";
		$queryf1_run = mysql_query($queryf1);
		$nos =  mysql_num_rows($queryf1_run);

		$isThere=checkComputed($stn,$nam);

		if($isThere==0){
			$query_iu="INSERT INTO `tresults`(`station`, `index`,`$yrs`) VALUES ('$stn','$nam','$nos')";
		}else{
			$query_iu="UPDATE `tresults` SET `$yrs` = '$nos' where `index`='$nam' AND `station`='$stn'";
		}
		$queryiu_run = mysql_query($query_iu);
	}

	function DTR($stn,$yrs,$yre,$nam){
		$queryf1="SELECT `MAX`,`MIN` From `temp` where `STATION`='$stn' AND `year`>='$yrs' AND `year`<'$yre'";
		$queryf1_run=mysql_query($queryf1);
		$den=0;
		$num=0;
		while($var=mysql_fetch_assoc($queryf1_run)){
			if($var['MAX']!=''&&$var['MIN']!=''&&$var['MAX']!=-99&&$var['MIN']!=-99){

				$num+=$var['MAX']-$var['MIN'];
				$den++;
			}
		}
		$ans=$num/max(1,$den);

		$isThere=checkComputed($stn,$nam);

		if($isThere==0){
			$query_iu="INSERT INTO `tresults`(`station`, `index`,`$yrs`) VALUES ('$stn','$nam','$ans')";
		}else{
			$query_iu="UPDATE `tresults` SET `$yrs` = '$ans' where `index`='$nam' AND `station`='$stn'";
		}
		$queryiu_run = mysql_query($query_iu);
	}

	function checkComputed($stn,$nam){
		$queryf2="SELECT `station` From `tresults` where `station`='$stn' AND `index`='$nam'";
		$queryf2_run = mysql_query($queryf2);
		$isThere=mysql_num_rows($queryf2_run);
		return $isThere;
	}




	// $query="CREATE TABLE IF NOT EXISTS `tresults`(`station` varchar(50), `index` varchar(50), ";

	// $query2="SELECT DISTINCT(year) FROM temp WHERE 1";
	// $query2_run=mysql_query($query2);
	// $n=mysql_num_rows($query2_run);
	// $i=1;
	// while($var2=mysql_fetch_assoc($query2_run)){
	// 	$yr=$var2['year'];
	// 	if($i<$n){
	// 		$query=$query." `".$yr."` FLOAT,";
	// 	}else{
	// 		$query=$query." `".$yr."` FLOAT)";
	// 	}
	// 	$i++;
	// }
	// mysql_query($query);
?>