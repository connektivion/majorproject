<?php
	require 'connect_db.php';
	$query="SELECT DISTINCT(station) FROM `pcp` WHERE 1";
	
	$query1_run=mysql_query($query);

	while($var1=mysql_fetch_assoc($query1_run)){
		$stn=$var1['station'];

		$query2="SELECT DISTINCT(year) FROM pcp WHERE `station`='$stn'";
		$query2_run=mysql_query($query2);

		while($var2=mysql_fetch_assoc($query2_run)){
			$yr=$var2['year'];

			//greaterThan(7.5,$stn,$yr,$yr+1,r75);
			//greaterThan(12.5,$stn,$yr,$yr+1,r125);
			//oneDayHighest($stn,$yr,$yr+1,'Rx1Day');	
			// highest5day($stn,'Rx5Day',$yr,$yr+1);	
			//SD2($stn,'SD2',$yr,$yr+1);
			//PRCPTOT($stn,'PRCPTOT',$yr,$yr+1);
			//CWD($stn,'CWD',$yr,$yr+1);
			//CWD($stn,'CDD',$yr,$yr+1);	
			//PERCEN($stn,'R95pTOT',$yr,.95,true);
			//PERCEN($stn,'R99pTOT',$yr,.99,true);	

		}
	}
	function greaterThan($val,$stn,$yrs,$yre,$nam){
		$queryf1="SELECT `PCP` From `pcp` where `station`='$stn' AND `year`>='$yrs' AND `year`<'$yre' AND `PCP`>='$val'";
		$queryf1_run = mysql_query($queryf1);
		$nos =  mysql_num_rows($queryf1_run);

		$isThere=checkComputed($stn,$nam);

		if($isThere==0){
			$query_iu="INSERT INTO `results`(`station`, `index`,`$yrs`) VALUES ('$stn','$nam','$nos')";
		}else{
			$query_iu="UPDATE `results` SET `$yrs` = '$nos' where `index`='$nam' AND `station`='$stn'";
		}
		$queryiu_run = mysql_query($query_iu);
	}
	function oneDayHighest($stn,$yrs,$yre,$nam){
		$query3="SELECT `PCP` FROM `pcp` WHERE `station`='$stn' AND `year`>='$yrs' AND `year`<'$yre' ORDER BY `PCP` DESC LIMIT 1";
		$query3_run=mysql_query($query3);
		$row=mysql_fetch_assoc($query3_run);
		$val=$row['PCP'];

		$isThere=checkComputed($stn,$nam);

		if($isThere==0){
			$query_iu="INSERT INTO `results`(`station`, `index`,`$yrs`) VALUES ('$stn','$nam','$val')";
		}else{
			$query_iu="UPDATE `results` SET `$yrs` = '$val' where `index`='$nam' AND `station`='$stn'";
		}
		
		$queryiu_run = mysql_query($query_iu);

	}

	function checkComputed($stn,$nam){
		$queryf2="SELECT `station` From `results` where `station`='$stn' AND `index`='$nam'";
		$queryf2_run = mysql_query($queryf2);
		$isThere=mysql_num_rows($queryf2_run);
		return $isThere;
	}

	function highest5day($stn,$nam,$yrs,$yre){
		$maxi=0;
		for($i=1;$i<=12;$i++){
			$query="SELECT PCP from pcp where `year`='$yrs' and `station`='$stn' and `month`='$i'";
			$query_run=mysql_query($query);
			$month=array();
			$size=0;
			$sumi=0;
			while($result=mysql_fetch_assoc($query_run)){
				$z=$result['PCP'];
				if($z<0||$z=='')
					$z=0;
				$month[$size++]=$z;
			}
			for($j=0;$j<5;$j++)
				$sumi+=$month[$j];
			for($j=6;$j<$size;$j++){
				$nsum=$sumi+$month[$j]-$month[$j-5];
				$sumi=max($sumi,$nsum);
			}
			$maxi=max($maxi,$sumi);
		}

		$isThere=checkComputed($stn,$nam);

		if($isThere==0){
			$query_iu="INSERT INTO `results`(`station`, `index`,`$yrs`) VALUES ('$stn','$nam','$maxi')";
		}else{
			$query_iu="UPDATE `results` SET `$yrs` = '$maxi' where `index`='$nam' AND `station`='$stn'";
		}
		
		$queryiu_run = mysql_query($query_iu);
	}

	function SD2($stn,$nam,$yrs,$yre){
		$query="SELECT SUM(PCP) as sumi from pcp where `year`='$yrs' and `station`='$stn' and `PCP`>=1";
		$query_run=mysql_query($query);
		$result=mysql_fetch_assoc($query_run);
		$num=$result['sumi'];
		$query2="SELECT `PCP` from pcp where `year`='$yrs' and `station`='$stn' and `PCP`>=1";
		$query2_run=mysql_query($query2);
		$den=mysql_num_rows($query2_run);
		$ans=$num/$den;
		
		$isThere=checkComputed($stn,$nam);

		if($isThere==0){
			$query_iu="INSERT INTO `results`(`station`, `index`,`$yrs`) VALUES ('$stn','$nam','$ans')";
		}else{
			$query_iu="UPDATE `results` SET `$yrs` = '$ans' where `index`='$nam' AND `station`='$stn'";
		}
		
		$queryiu_run = mysql_query($query_iu);
	
	}

	function PRCPTOT($stn,$nam,$yrs,$yre){
		$query="SELECT SUM(PCP) as sumi from pcp where `year`='$yrs' and `station`='$stn' and `PCP`>0";
		$query_run=mysql_query($query);
		$result=mysql_fetch_assoc($query_run);
		$num=$result['sumi'];

		$isThere=checkComputed($stn,$nam);

		if($isThere==0){
			$query_iu="INSERT INTO `results`(`station`, `index`,`$yrs`) VALUES ('$stn','$nam','$num')";
		}else{
			$query_iu="UPDATE `results` SET `$yrs` = '$num' where `index`='$nam' AND `station`='$stn'";
		}
		
		$queryiu_run = mysql_query($query_iu);
	}

	function CWD($stn,$nam,$yrs,$yre){
		$query="SELECT PCP from pcp where `year`='$yrs' and `station`='$stn' ORDER BY `year`,`month`,`day`";
		$query_run=mysql_query($query);
		$yrly=array();
		$size=0;
		while($result=mysql_fetch_assoc($query_run)){
			$z=$result['PCP'];
			if($z<0||$z=='')
				$z=0;
			$yrly[$size++]=$z;
		}

		$maxLength=0;
		$tempLength=0;

		if($nam=='CWD'){
			for($i=0;$i<$size;$i++) {
				if ($yrly[$i]>=1) {
					$maxLength=max($maxLength, ++$tempLength);
				}else{
					$tempLength=0;
				}
			}
		}else{
			for($i=0;$i<$size;$i++) {
				if ($yrly[$i]<1) {
					$maxLength=max($maxLength, ++$tempLength);
				}else{
					$tempLength=0;
				}
			}
		}

		$isThere=checkComputed($stn,$nam);

		if($isThere==0){
			$query_iu="INSERT INTO `results`(`station`, `index`,`$yrs`) VALUES ('$stn','$nam','$maxLength')";
		}else{
			$query_iu="UPDATE `results` SET `$yrs` = '$maxLength' where `index`='$nam' AND `station`='$stn'";
		}
		
		$queryiu_run = mysql_query($query_iu);

	}
	function INTERPOLATE($x1,$x2,$y1,$y2,$x){
		return ($x*($y2-$y1)-($x1*$y2-$x2*$y1))/($x2-$x1);
	}
	function PERCEN($stn,$nam,$yrs,$find,$inc){
		if($inc)
			$query="SELECT PCP from pcp where `year`='$yrs' and `station`='$stn' and `PCP`>=1 ORDER BY `PCP`";
		else
			$query="SELECT PCP from pcp where `year`='$yrs' and `station`='$stn' and `PCP`>=1 ORDER BY `PCP` DESC"; 

		$query_run=mysql_query($query);
		//$res=array();
		$i=1;
		$tot=0;
		$nos=mysql_num_rows($query_run)+1;
		while($var=mysql_fetch_assoc($query_run)){
			//array_push($res, $var['pcp']);
			$pctile=($nos-1-$i)/$nos;
			if($pctile<$find)
				break;
			if($var['PCP']!=-99)
				$tot+=$var['PCP'];
			$i++;
		} 
		//$v=interpol($l,$u,$find,$res);

		// $query2="SELECT SUM(PCP) as sumi from pcp where `year`='$yrs' and `station`='$stn' and `PCP`>=1";
		// $query_run2=mysql_query($query2);
		// $result=mysql_fetch_assoc($query_run2);
		// $num=$result['sumi'];

		$isThere=checkComputed($stn,$nam);

		if($isThere==0){
			$query_iu="INSERT INTO `results`(`station`, `index`,`$yrs`) VALUES ('$stn','$nam','$tot')";
		}else{
			$query_iu="UPDATE `results` SET `$yrs` = '$tot' where `index`='$nam' AND `station`='$stn'";
		}
		
		$queryiu_run = mysql_query($query_iu);

	}
?>