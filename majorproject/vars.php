<?php
	require 'connect_db.php';

	function calcv($tabname,$yrs,$yre,$results){
		$query="SELECT DISTINCT `station` FROM `".$results."` WHERE 1";
		$query_run=mysql_query($query);
		while($var=mysql_fetch_assoc($query_run)){
			$stn=$var['station'];
			$query2="SELECT DISTINCT `index` FROM `".$results."` WHERE `station`='$stn'";
			$query_run2=mysql_query($query2);
			while($var2=mysql_fetch_assoc($query_run2)){                               
				$idx=$var2['index'];
				$query3="SELECT * FROM `".$results."` WHERE `station`='$stn' and `index`='$idx'";
				$query_run3=mysql_query($query3);
				$vals=array();
				$sz=0;
				$ys=$yrs;
				$ye=$yre;
				$uni=array();
				$var3=mysql_fetch_assoc($query_run3);
				while($ys<=$ye){
					if($var3[$ys]!=-99&&$var3[$ys]!=NULL){
						array_push($vals, $var3[$ys]);
						array_push($uni, $var3[$ys]);
						$sz++;
					}
					$ys++;
				}
				$ans=0;
				$ans2=$sz*($sz-1)*(2*$sz+5);
				// for($i=0;$i<$sz-1;$i++){
				// 	// if($vals[$i]==-99||$vals[$i]==NULL)
				// 	// 		continue;
				// 	// for($j=$i+1;$j<$sz;$j++){
				// 	// 	if($vals[$j]==-99||$vals[$i]==NULL)
				// 	// 		continue;
				// 	// 	if(($vals[$j]-$vals[$i])>0)
				// 	// 		$ans++;
				// 	// 	if(($vals[$j]-$vals[$i])<0)
				// 	// 		$ans--;
				// 	// }
				// }
				sort($uni);
				$i=0;
				$last=0;
				$j=1;
				for($j=1;$j<$sz;$j++){
					if($uni[$i]!=$uni[$j]){		
						$diff=$j-$last;			
						//echo "diff=".$diff." and element is ".$uni[$last]."<br>";
						$i++;
						$uni[$i]=$uni[$j];
						$last=$j;
						$ans2-=($diff*($diff-1)*(2*$diff+5));
					}
				}
				$diff=($j-$last);
				$ans2-=($diff*($diff-1)*(2*$diff+5));
				$ans2/=18;
				//echo $ans2." ".$stn." ".$idx."<br>";
				//echo "diff=".($j-$last)." and element is ".$a[$j-1]."<br>";
				//echo $i+1;
				//echo $ans2." ".$stn." ".$idx."<br>";
				$isThere=checkComputed5($stn,$tabname);
				if($isThere)
					$query5="UPDATE `".$tabname."` SET `$idx` = '$ans2' where `station`='$stn'";
				else
					$query5="INSERT INTO `".$tabname."`(`station`, `$idx`) VALUES ('$stn','$ans2')";
				$query_ui=mysql_query($query5);
			}
			//echo "****<br>";
		}
	}

	function checkComputed5($stn,$nam){
		$queryf2="SELECT `station` From `".$nam."` where `station`='$stn'";
		$queryf2_run = mysql_query($queryf2);
		$isThere=mysql_num_rows($queryf2_run);
		return $isThere;
	}

	//calcv('vars19752012',1975,2012,'results');
?>