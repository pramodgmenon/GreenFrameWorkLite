          <br /> <form  name="frmfeedback" id="frmfeedback" method="post" action="add_user.php" enctype="multipart/form-data">
      <!--<html> --> 
            <table align="center" border="0" cellpadding="0" cellspacing="2" style="width:80%;" >
                <tr>
                    <td colspan="2" align="center" class="page_caption">
                    <?php if ( isset($_GET['id']) || isset($_POST['h_id']) ){?>
                    <?php echo $CAP_page_caption_update?>
                    <?php }else{?>
                    <?php echo $CAP_page_caption_add?>
                    <?php }?>
                    </td>
                </tr>
                <tr>
                    <td width="40%" align="right" >&nbsp;&nbsp;</td>    
                    <td >&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="errormessage">
                    <?php echo $myuser->error_description; ?>
                    </td>
                </tr>
                <tr>
                    <?php if ( $image != "" ){?>
                    <td>
                        <img  src="<?php echo$user_image?>" height="48px" align="left">
                    </td>
                    <td></td>
                    <?php }?>
                </tr>
                <?php /*if(isset($_GET['id']) || isset($_POST['h_id']) ) {?>
                <tr>
                    <td style="width:30%" align="right"><b>Registration Date : </b></td>
                    <td><b><?php echo$r_date?></b></td>
                </tr>
                <?php } */?>
                <tr>
                    <td style="width:30%" align="right">
                        <b><?php echo$CAP_username?></b>
                    </td>   
                    <td >
                        <input style="width:200px;" align = "center" <?php if(isset($_GET['id'])){?>readonly="true" <?php } ?>type="text" name="txtusername" value="<?php if(isset($_POST['txtusername'])){echo $_POST['txtusername'];}elseif(isset($_GET['id'])){echo $myuser->user_name;}?>"  >
                    </td>
                </tr>
                <?php if(!isset($_GET['id']) && !isset($_POST['h_id']) ) {?>
                <tr>
                    <td style="width:30%" align="right">
                        <b>Generate Password : </b>
                    </td>   
                    <td >
                        <input align = "center" type="checkbox" name="chkpassword" id="chkpassword" value="1" <?php if(isset($_POST['chkpassword'])){echo "checked";}?>>

                    </td>
                </tr>

                <tr>
                    <td style="width:30%" align="right">
                        <b><?php echo $CAP_password?></b>
                    </td>   
                    <td >
                        <input style="width:200px;" align = "center" type="password" name="txtpassword" value="<?php if(isset($_POST['txtusername'])){echo $_POST['txtpassword'];}?>"  >
                    </td>
                </tr>


                <tr>
                    <td style="width:30%" align="right">
                        <b><?php echo $CAP_repassword?></b>
                    </td>   
                    <td >
                        <input style="width:200px;" align = "center" type="password" name="txtrepassword" value="<?php if(isset($_POST['txtusername'])){echo $_POST['txtrepassword'];}?>"  >
                    </td>
                </tr>
                <?php } ?>
                <tr>
                    <td style="width:30%" align="right" >
                        <b><?php echo $CAP_usertype?></b>
                    </td>   
                    <td >
                        <?php
                        if (isset($_POST['lstusertype'])){$usertypeid = $_POST['lstusertype'];}elseif(isset($_GET['id'])){$usertypeid = $myuser->usertype_id;}
                        populate_list_array("lstusertype", $chk_usertype, "id", "usertype_name", $defaultvalue=$usertypeid,$disable=false);
                        ?>
                    </td>
                </tr>


                <tr>
                    <td style="width:30%" align="right" >
                        <b><?php echo $CAP_userstatus?></b>
                    </td>   
                    <td >
                        <?php
                        if (isset($_POST['lstuserstatus'])){$userstatusid = $_POST['lstuserstatus'];}elseif(isset($_GET['id'])){$userstatusid = $myuser->userstatus_id;}
                        populate_list_array("lstuserstatus", $chk_userstatus, "id", "userstatus_name", $defaultvalue=$userstatusid,$disable=false);
                        ?>
                    </td>
                </tr>


                <tr>
                    <td style="width:30%" align="right" >&nbsp;</td>    
                    <td >&nbsp;</td>
                </tr>

                <tr>
                    <td style="width:30%" align="right">
                        <b><?php echo $CAP_firstname?></b>
                    </td>   
                    <td >
                        <input style="width:200px;" align = "center" type="text" name="txtfirstname" value="<?php if(isset($_POST['txtusername'])){echo $_POST['txtfirstname'];}elseif(isset($_GET['id'])){echo $myuser->firstname;}?>"  >
                    </td>
                </tr>


                <tr>
                    <td style="width:30%" align="right">
                        <b><?php echo $CAP_lastname?></b>
                    </td>   
                    <td >
                        <input style="width:200px;" align = "center" type="text" name="txtlastname" value="<?php if(isset($_POST['txtusername'])){echo $_POST['txtlastname'];}elseif(isset($_GET['id'])){echo $myuser->lastname;}?>"  >
                    </td>
                </tr>


                <tr>
                    <td style="width:30%" align="right">
                        <b><?php echo $CAP_address?></b>
                    </td>   
                    <td >
                        <input style="width:200px;" align = "center" type="text"name="txtaddress" value="<?php if(isset($_POST['txtusername'])){echo $_POST['txtaddress'];}elseif(isset($_GET['id'])){echo $myuser->address;}?>"  >
                    </td>
                </tr>


                <tr>
                    <td style="width:30%" align="right">
                        <b><?php echo $CAP_city?></b>
                    </td>   
                    <td >
                        <input style="width:200px;" align = "center" type="text"name="txtcity"  value="<?php if(isset($_POST['txtusername'])){echo $_POST['txtcity'];}elseif(isset($_GET['id'])){echo $mycity->city_name;}?>"  >
                    </td>
                </tr>

                <tr>
                    <td style="width:30%" align="right" >
                        <b><?php echo $CAP_country?></b>
                    </td>   
                    <td >
                        <?php
                        if (isset($_POST['lstcountry'])){$countryid = $_POST['lstcountry'];}elseif(isset($_GET['id'])){$countryid = $myuser->country_id;}
                        populate_list_array("lstcountry", $chk_country, "id", "country", $defaultvalue=$countryid,$disable=false);?>
                    </td>
                </tr>
                <tr>
                    <td  width="50%" align="right">
                        <b><?php echo $CAP_sec_que ?></b>
                    </td>   
                    <td  width="50%">
                         <?php if(isset($_POST['lstsec_que'])){ $value = $_POST['lstsec_que']; } elseif(isset($_GET['id'])){$value=$myuser->sec_que_id;}else{ $value = -1;}
                         populate_list_array("lstsec_que", $chk_que, "id", "question", $defaultvalue=$value,$disable=false);?>
                    </td>
                </tr>
                <tr>
                    <td  width="50%" align="right">
                        <b><?php echo $CAP_sec_ans ?></b>
                    </td>   
                    <td  width="50%">
                        <input class="passwd_box"  type="text" name="txtsec_ans" id="txtsec_ans" value="<?php if(isset($_POST['txtsec_ans'])){echo $_POST['txtsec_ans'];}elseif(isset($_GET['id'])){echo $myuser->sec_ans;}?>" />
                    </td>
                </tr>
                <?php if($image == "" ){?>
                    <tr>
                    <td style="width:30%" align="right" >
                        <b><?php echo $CAP_image?></b>
                    </td>
                    <td colspan="2"><input type="file" name="fleimage" id="fleimage" size="30" /></td>
                    </tr>
                <?php } ?>
                <tr>
                    <td style="width:30%" align="right" >&nbsp;</td>    
                    <td >&nbsp;</td>
                </tr>

                <?php if(!isset($_GET['id'])){?>
                <tr>
                    <td style="width:30%" align="right">
                        <b>Send Email Confirmation : </b>
                    </td>   
                    <td >
                        <input align = "center" type="checkbox" name="chkemailconfirm" value="1" <?php if(isset($_POST['chkemailconfirm'])){echo "checked";}?> >
                    </td>
                </tr>

                <tr>
                    <td style="width:30%" align="right" >&nbsp;</td>    
                    <td >&nbsp;</td>
                </tr>
                <?php } ?>

                <tr>
                    <td colspan="2" align="center"><br />
                    <?php if ( isset($_GET['id'])  || isset($_POST['h_id']) ){?>
                    <input type="submit" name="submit" value="<?php echo $CAP_update?>" onClick="return validate_admin_update();" >
                    <input type="Submit" name="submit" value="<?php echo $CAP_delete?>" onClick="return delete_user();">

                    <?php }else{ ?>
                    <input type="submit" name="submit" value="<?php echo$CAP_add?>" onClick="return validate_admin_update();">
                    <?php }?>
                    <input type="hidden" name="h_check_id" value="<?php if( isset($_GET['id']) ){echo $myuser->id;}elseif ( isset($_POST['h_id']) ){ echo $myuser->id;}?>">
                    <input type="hidden" name="h_check" value="<?php echo md5("update_user_check"); ?>">                    
                    <?php if ( $myuser->image != "" ) { ?>
                    <input type="submit" name="submit" value="<?php echo $CAP_delete_image?>" onClick="return delete_image();"><input type="hidden" name="h_id" value="<?php echo$_GET['id']?>">
                    <?php } ?>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" align="center"><br />
                    
                    </td>
                </tr>
            </table>
            </form>
