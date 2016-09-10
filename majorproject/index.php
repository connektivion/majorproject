<?php
	require 'connect_db.php';

?>
<form method="GET" action="404 .php">
	<h5>enter start year of analysis 1975 to 2012</h5>
	<input type='text' placeholder='year start' name='years'/>
	<h5>enter interval of analysis</h5>
	<input type='text' placeholder='interval' name='interval'/>
	<h5>enter 1 for rainfall, 2 for temperature analysis</h5>
	<input type='text' placeholder='rant' name='rant'/>
	<input type='submit' value='Analyse'/>
</form>