<?php
	require 'connect_db.php';

	function calcs($tabname,$ys,$ye,$results,$pcp){
		$query='select * from `'.$results.'` where 1';
		$query_run=mysql_query($query);
		$columns_total=mysql_num_fields($query_run);
		$arr=array();
		for($i=2;$i<$columns_total;$i++){
			$heading = mysql_field_name($query_run,$i);
			//echo $heading."<br>";ok
			if($heading>=$ys&&$heading<=$ye)
				array_push($arr,$heading);
		}
		//echo "total years - ".sizeof($arr)."<br>";
		$query3='SELECT DISTINCT `index` from `'.$results.'` where 1';
		$query_run3=mysql_query($query3);
		$indices=array();
		while($var=mysql_fetch_assoc($query_run3)){
			array_push($indices, $var['index']);
		}


		$query1="SELECT DISTINCT `station` FROM `".$pcp."` WHERE 1";
		$query1_run=mysql_query($query1);

		while($var1=mysql_fetch_assoc($query1_run)){
			$stn=$var1['station'];
			for($i=0;$i<sizeof($indices);$i++){
				$query2="select * from `".$results."` where `station`='".$stn."' and `index`='".$indices[$i]."'";
				$query_run2=mysql_query($query2);
				while($var=mysql_fetch_assoc($query_run2)){
					$tot=0;
					//modify this(below) for trend in interval
					for($j=0;$j<sizeof($arr)-1;$j++){
						for($k=$j+1;$k<sizeof($arr);$k++){
							if(abs($var[$arr[$k]]-$var[$arr[$j]]))
								$tot+=(($var[$arr[$k]]-$var[$arr[$j]])/abs($var[$arr[$k]]-$var[$arr[$j]]));
						}
						//echo $var[$arr[$j]]." - ".$stn." - ".$indices[$i]." - ".$arr[$j]."<br>";
					}

					$isThere=checkComputed2($stn,$tabname);
					$idx=$indices[$i];
					//echo $isThere."<br>";
					if($isThere==0){
						$query_iu="INSERT INTO `".$tabname."`(`station`,`$idx`) VALUES ('$stn','$tot')";
					}else{
						$query_iu="UPDATE `".$tabname."` SET `$idx` = '$tot' where `station`='$stn'";
					}
					$query_iu_run=mysql_query($query_iu);
					//if($query_iu_run)
						//echo $tot." - ".$stn." - ".$indices[$i]."<br>";
				}
			}
			//echo "*******<br>";
		}
	}

	function checkComputed2($stn,$nam){
		$queryf2="SELECT `station` From `".$nam."` where `station`='$stn'";
		$queryf2_run = mysql_query($queryf2);
		$isThere=mysql_num_rows($queryf2_run);
		return $isThere;
	}

?>