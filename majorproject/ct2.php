<?php
	require 'connect_db.php';

	function createTable($name){		
		$text="( `station` text(100) , `mks197510` float , `prob197510` float ,`mks198510` float , `prob198510` float, `mks199510` float , `prob199510` float, `mks200510` float , `prob200510` float , `mks197538` float , `prob197538` float, `sen197510` float , `sen198510` float, `sen199510` float, `sen200510` float, `sen197538` float )" ;
		$query2="CREATE TABLE IF NOT EXISTS `$name` $text";
		$query_run2=mysql_query($query2);
		//if($query_run2)
			//echo "created!<br>";
	}
	//createTable('r75n');

?>