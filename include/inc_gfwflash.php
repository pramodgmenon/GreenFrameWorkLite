<?php 	
	if(trim($_SESSION[SESSION_TITLE.'flash'])!=""){
?>

<div style="font-size: 11pt; height:350px" align="center"><br/><br/><?php echo $_SESSION[SESSION_TITLE.'flash'];
	$_SESSION[SESSION_TITLE.'flash']="";

 ?></div>

<?php
	}else{
 ?>
<div style="font-size: 11pt; height:350px" align="center"><?php echo  $mesg_error ?></div>

<?php
	}
 ?>
