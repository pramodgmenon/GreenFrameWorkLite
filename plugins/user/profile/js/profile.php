    //<!--
    function clean_loginname(){
        if(document.getElementById("loginname").value=="<?php echo $msg_default_username ?>"){
            document.getElementById("loginname").value = "";
        }
    }
    //-->
