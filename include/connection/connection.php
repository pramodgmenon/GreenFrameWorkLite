<?php
$dbhostname = "localhost";
$dbusername = "MYSQL USER";
$dbpassword = "MYSQL PASSWORD";
$dbname = "gfw_lite";
//establish the connection with the database server
$myconnection = mysql_connect($dbhostname, $dbusername, $dbpassword) or die ("Unable to connect to server" . mysql_error());
//connect to the database
$blnConnected = mysql_select_db ($dbname, $myconnection) or die("Unable to connect to database" . mysql_error());
?>

