<?php   /*
    This forms most of the HTML contents of User Login page
    On clicking the Login Button
    the page is called by itself
    If successful user is redirected to the concerned Logged in page
    Else
    Invalid Login information is displayed
    */

    ?>
        <!-- form start-->
            <form  target="_self" method="post" action="<?php echo $current_url?>" name="frmsecurityquestion" id="frmsecurityquestion">
                <table cellspacing="5" border="0" cellpadding="0" align="center">
                <tbody>
                <tr>
                    <td colspan="2" align="center" class="page_caption">
                     <br /><?php if ( $mysec_que->id != "" && $mysec_que->id != gINVALID ){echo $CAP_page_caption_edit;}
                             else{echo $CAP_page_caption_add;}?><br /><br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="errormessage_passwd" align="center" >
                       <?php echo $mysec_que->error_description; echo $passwd_error ;?>
                    </td>
                </tr>
                <tr>
                    <td valign="bottom" align="right">
                        <b><?php echo $CAP_sec_que ?></b></td>
                    </td>
                    <td valign="top" align="left">
                    <textarea name="txtquestion" id="txtquestion"><?php echo $mysec_que->question?>
                    </textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" width="100%">&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" width="100%">
                            <?php if ( $mysec_que->id != "" && $mysec_que->id != gINVALID ){?>
                             <input value="<?php echo $CAP_update ?>" type="submit" name="update" onClick="return validate_sec_que();" />
                             <input value="<?php echo $CAP_delete ?>" type="submit" name="delete" onClick="return confirm_delete();" />
                             <?php }else{ ?>
                            <input value="<?php echo $CAP_insert ?>" type="submit" name="insert" onClick="return validate_sec_que();" />
                            <?php }?>

                            <input name="h_id" value="<?php echo $h_id; ?>" type="hidden">
                    </td>
                </tr>
                </tbody>
                </table>
            </form>

            <!-- form end-->
    <script language="javascript" type="text/javascript">
    //<!--
            document.getElementById("txtquestion").focus();
   //-->
    </script>   
