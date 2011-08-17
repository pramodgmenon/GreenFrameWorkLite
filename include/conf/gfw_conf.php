<?php
// for gspage
define('SESSION_TITLE','GFW_');
define('TEST_ALERT','Got Error!');

// $_SESSION[SESSION_TITLE.'gDEBUG'] = true;

if($_SESSION[SESSION_TITLE.'gDEBUG'] == true){
    define('gDEBUG',true);
}else{
    define('gDEBUG',false);
}

// $_SESSION[SESSION_TITLE.'gEDIT_MODE'] = true;

if($_SESSION[SESSION_TITLE.'gEDIT_MODE'] == true){
    define('gEDIT_MODE',true);
}else{
    define('gEDIT_MODE',false);
}

define('gINVALID',-1);

define('CONF_LANG_ENGLISH',1);
if(!isset($_SESSION[SESSION_TITLE.'gLANGUAGE'])){
	$_SESSION[SESSION_TITLE.'gLANGUAGE'] = CONF_LANG_ENGLISH;
}


//  publish or not
 define('CONF_NOT_PUBLISH',0);
 define('CONF_PUBLISH',1);


?>
