<form name="frmsearch" id="frmsearch" method="GET" action="admin_list_guestbooks.php">
<table align="center">
<tbody>
<tr>
                    <td colspan="5" align="center" class="page_caption">
                    <?php echo $CAP_page_caption?>
                    </td>
</tr>
    <!--tr>
      <td class="caption" ><?php echo $CAP_username ?></td>
      <td><input  style="width: 210px; height:22;"  maxlength="100" size="35"
 name="txtusername" value="<?php echo $_GET[txtusername]; ?>"></td>
    </tr> 
     

    <tr>
      <td class="caption" ><?php echo  $CAP_name; ?></td>
      <td><input  style="width: 210px; height:22;"  maxlength="100" size="35"
 name="txtfirstname" value="<?php echo $_GET[txtfirstname]; ?>"></td>
    </tr>    
    
     <tr>
      <td class="caption" ><?php echo  $CAP_lastname; ?></td>
      <td><input  style="width: 210px; height:22;"  maxlength="100" size="35"
 name="txtlastname" value="<?php echo $_GET[txtlastname]; ?>"></td>
    </tr>    
     <tr>
      <td class="caption" ><?php echo  $CAP_address; ?></td>
      <td><input  style="width: 210px; height:22;"  maxlength="100" size="35"
 name="txtaddress" value="<?php echo $_GET[txtaddress]; ?>"></td>
    </tr>    
    
     <tr>
      <td class="caption" ><?php echo  $CAP_city; ?></td>
      <td><input  style="width: 210px; height:22;"  maxlength="100" size="35"
 name="txtcity" value="<?php echo $_GET[txtcity]; ?>"></td>
    </tr>  
    <tr>
      <td class="caption" ><?php echo  $CAP_country ?></td>
      <td><?php populate_list_array("lstcountry", $chk_country, "id", "country",$_GET['lstcountry'],$disable=false); ?></td>
    </tr> 
    <tr>
      <td class="caption" ><?php echo $CAP_usertype ?></td>
      <td><?php populate_list_array("lstusertype", $chk_usertype, "id", "usertype_name", $_GET['lstusertype'],$disable=false); ?></td>
    </tr> 
     <tr>
      <td class="caption" ><?php echo $CAP_userstatus ?></td>
      <td><?php populate_list_array("lstuserstatus", $chk_userstatus, "id", "userstatus_name", $_GET['lstuserstatus'],$disable=false); ?></td>
    </tr> 


 
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;</td>
      <td><input name="submit" value="<?php echo $CAP_submit?>" type="submit"><input type="hidden" name="h_conf_search" value="<?php echo md5("CONF_SEARCH"); ?>"></td>
    </tr!-->


</tbody>
</table>
</form>


    <table  width="90%"   align="center" border="0" cellpadding="1px" cellspacing="1px">
     <tr><td colspan="6">&nbsp;</td></tr>
    <?php
    if ( $data_bylimit == false ){?>
     <tr><td colspan="6">&nbsp;</td></tr>
     <tr><td colspan="6" align="center" class="message" ><?php echo $MSG_mesg ?></td></tr>
     <tr><td colspan="6">&nbsp;</td></tr>
    <?php
     }
     else{?>
    <tr class="tableheader">
        <td></td>
        <td><?php echo $CAP_emailid?></td>
        <td><?php echo $CAP_subject?></td>
        <td><?php echo $CAP_date?></td>
        <td><?php echo $CAP_name?></td>
        <td><?php echo $CAP_address?></td>
    </tr>

     <?php
     //to number each record in a page
    
     $style = "tbl_row_lite";
     $index = 0;
     $slno = 1;

     while ( $count_data_bylimit > $index ){
        $link = "admin_view_books.php?id=".$data_bylimit[$index]["id"]."";
         if ( $style == "tbl_row_lite" ){
            $style="tbl_row_dark";
        }
        else{
            $style="tbl_row_lite";
        }

        ?>
    <tr onmouseover="this.className='tbl_row_highlight'" onmouseout="this.className='<?php echo $style; ?>'"  class="<?php echo $style; ?>" >
        <td><?php echo $slno++ ?></td>
        <td><?php echo $data_bylimit[$index]["emailid"] ;?></td>
        <td><a href="<?php echo $link; ?>"><?php echo $data_bylimit[$index]["subject"]; ?></a></td>
        <td><?php
        echo date('d/m/y h:i:s',strtotime($data_bylimit[$index]["submit_date"])); ?></td>
        <td><?php echo $data_bylimit[$index]["name"]; ?></td>
        <td><?php echo $data_bylimit[$index]["address"]; ?></td>

    </tr><?php
         $index++;
    }
    ?>
    <tr><td colspan="6">&nbsp;</td></tr>
    <tr><td colspan="6" align="center">
        <!--For pagination. we can create a  diff style  & use-->
        <?php $Mypagination->pagination_style1(); ?>
        </td></tr>
      <?php } ?>
      </table>
      <br />
<div align="center">* You can Click on a Subject to "View" or"Reply"</div>
