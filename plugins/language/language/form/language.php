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
            <form  target="_self" method="post" action="<?php echo $current_url?>" name="frmlanguage" id="frmlanguage">
                <table cellspacing="5" border="0" cellpadding="0" align="center">
                <tbody>
                <tr>
                    <td colspan="2" align="center" class="page_caption">
                     <br /><?php if ( $mylanguage->id != "" && $mylanguage->id != gINVALID ){echo $CAP_page_caption_edit;}
                             else{echo $CAP_page_caption_add;}?><br /><br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="errormessage_passwd" align="center" >
                       <?php echo $mylanguage->error_description; ?>
                    </td>
                </tr>
                <tr>
                    <td valign="bottom" align="right">
                        <b><?php echo $CAP_language ?></b></td>
                    </td>
                    <td valign="top" align="left">
                    <input type="text" name="txtlanguage" id="txtlanguage" value="<?php echo $mylanguage->language?>">
                    </td>
                </tr>
                <?php if ( $mylanguage->id != "" && $mylanguage->id != gINVALID ){?>
                <tr>
                    <td valign="bottom" align="right">
                        <b><?php echo $CAP_publish ?></b></td>
                    </td>
                    <td valign="top" align="left">
                    <input type="checkbox" name="chkpublish" id="chkpublish" value="<?php echo $mylanguage->publish?>" <?php if($mylanguage->publish==CONF_PUBLISH){?>"checked"<?php } ?> />
                    </td>
                </tr>
                <?php } ?>
                <tr>
                    <td colspan="2" align="center" width="100%">&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" width="100%">
                            <?php if ( $mylanguage->id != "" && $mylanguage->id != gINVALID ){?>
                             <input value="<?php echo $CAP_update ?>" type="submit" name="update" onClick="return validate_language();" />
                             <input value="<?php echo $CAP_delete ?>" type="submit" name="delete" onClick="return confirm_delete();" />
                             <?php }else{ ?>
                            <input value="<?php echo $CAP_insert ?>" type="submit" name="insert" onClick="return validate_language();" />
                            <?php } ?>

                            <input name="h_id" value="<?php echo $mylanguage->id; ?>" type="hidden">
                    </td>
                </tr>
                </tbody>
                </table>
            </form>

            <!-- form end-->
    <script language="javascript" type="text/javascript">
    //<!--
            document.getElementById("txtlanguage").focus();
   //-->
    </script>   
