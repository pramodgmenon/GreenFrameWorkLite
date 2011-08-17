<?php
$i=0;

GLOBAL $menu_list;
GLOBAL $g_msg_unauthorized_request;

$menu_list[$i][caption] = "Home";
$menu_list[$i][url]="index.php";
$menu_list[$i][usertype] = 0;
$i++;
$menu_list[$i][caption] = "GFW Menu";
$menu_list[$i][url]="#";
$menu_list[$i][usertype] = USERTYPE_ADMIN;
$menu_list[$i][submenu] = "gfw_menu";
$i++;

$g_menu_user_menu = "User Menu";

$menu_list[$i][caption] = $g_menu_user_menu;
$menu_list[$i][url]="#";
$menu_list[$i][usertype] = USERTYPE_ADMIN;
$menu_list[$i][submenu] = "user_menu_admin";
$i++;

$menu_list[$i][caption] = $g_menu_user_menu;
$menu_list[$i][url]="#";
$menu_list[$i][usertype] = USERTYPE_REGISTERED_USER;
$menu_list[$i][submenu] = "user_menu_registered_user";
$i++;

$menu_list[$i][caption] = $g_menu_user_menu;
$menu_list[$i][url]="#";
$menu_list[$i][usertype] = USERTYPE_EMPLOYEE;
$menu_list[$i][submenu] = "user_menu_employee";
$i++;


$menu_list[$i][caption] = "Guest Book";
$menu_list[$i][url]="#";
$menu_list[$i][usertype] = 0;
$menu_list[$i][submenu] = "guestbook_menu";

$i++;


$menu_list[$i][caption] = "Downloads";
$menu_list[$i][url]="#";
$menu_list[$i][usertype] = 0;
$menu_list[$i][submenu] = "download_menu";
$i++;

$menu_list[$i][caption] = $g_menu_Login; 
$menu_list[$i][url]="login.php";
$menu_list[$i][usertype] = 0;
$i++;

$menu_list[$i][caption] = "Sign Up";
$menu_list[$i][url]="signup.php";
$menu_list[$i][usertype] = -1;
$i++;


GLOBAL $gfw_menu;
$gfw_menu[$i][caption] ="Search Conf";
$gfw_menu[$i][url]="gsconf_search.php";
$gfw_menu[$i][usertype] = USERTYPE_ADMIN;
$i++;

$gfw_menu[$i][caption] = "Publish Conf (ALL)";
$gfw_menu[$i][url]="gsconf_publishall.php";
$gfw_menu[$i][usertype] = USERTYPE_ADMIN;
$i++;

$gfw_menu[$i][caption] = "Import Conf";
$gfw_menu[$i][url]="gsconf_import.php";
$gfw_menu[$i][usertype] = USERTYPE_ADMIN;
$i++;


$gfw_menu[$i][caption] ="Settings";
$gfw_menu[$i][url]="gsconf_settings.php";
$gfw_menu[$i][usertype] = USERTYPE_ADMIN;
$i++;

$gfw_menu[$i][caption] = "Languages";
$gfw_menu[$i][url]="language_search.php";
$gfw_menu[$i][usertype] = USERTYPE_ADMIN;
$i++;

$gfw_menu[$i][caption] = "Add Language";
$gfw_menu[$i][url]="language.php";
$gfw_menu[$i][usertype] = USERTYPE_ADMIN;
$i++;

$gfw_menu[$i][caption] = "Images";
$gfw_menu[$i][url]="image_upload.php";
$gfw_menu[$i][usertype] = USERTYPE_ADMIN;
$i++;


$gfw_menu[$i][caption] = "Backup Data";
$gfw_menu[$i][url]="backup.php";
$gfw_menu[$i][usertype] = USERTYPE_ADMIN;
$i++;


$gfw_menu[$i][caption] = "Restore Data";
$gfw_menu[$i][url]="restore.php";
$gfw_menu[$i][usertype] = USERTYPE_ADMIN;
$i++;


GLOBAL $user_menu_admin;
$user_menu_admin[$i][caption] = "Profile";
$user_menu_admin[$i][url]="profile.php";
$user_menu_admin[$i][usertype] = USERTYPE_ADMIN;
$i++;
$user_menu_admin[$i][caption] = "Change Password";
$user_menu_admin[$i][url]="change_passwd.php";
$user_menu_admin[$i][usertype] = USERTYPE_ADMIN;
$i++;

$user_menu_admin[$i][caption] = "Add Security Question";
$user_menu_admin[$i][url]="securityquestion.php";
$user_menu_admin[$i][usertype] = USERTYPE_ADMIN;
$i++;

$user_menu_admin[$i][caption] = "Search Security Question";
$user_menu_admin[$i][url]="sec_que_search.php";
$user_menu_admin[$i][usertype] = USERTYPE_ADMIN;
$i++;

$user_menu_admin[$i][caption] = "Add User";
$user_menu_admin[$i][url]="add_user.php";
$user_menu_admin[$i][usertype] = USERTYPE_ADMIN;
$i++;

$user_menu_admin[$i][caption] = "User List";
$user_menu_admin[$i][url]="user_list.php";
$user_menu_admin[$i][usertype] = USERTYPE_ADMIN;
$i++;


GLOBAL $user_menu_registered_user;
$user_menu_registered_user[$i][caption] = "Profile";
$user_menu_registered_user[$i][url]="profile.php";
$user_menu_registered_user[$i][usertype] = USERTYPE_REGISTERED_USER;
$i++;




GLOBAL $user_menu_employee;
$user_menu_employee[$i][caption] = "Profile";
$user_menu_employee[$i][url]="profile.php";
$user_menu_employee[$i][usertype] = USERTYPE_EMPLOYEE;
$i++;



GLOBAL $download_menu;
$download_menu[$i][caption] = "Download Source";
$download_menu[$i][url]="download.php?download=greenFW.zip"; 
$download_menu[$i][usertype] = 0;
$i++;
$download_menu[$i][caption] = "Download DB";
$download_menu[$i][url]="download.php?download=gfw.sql.zip";
$download_menu[$i][usertype] = 0;
$i++;


GLOBAL $guestbook_menu;

$guestbook_menu[$i][caption] = "Guest Book";
$guestbook_menu[$i][url]="guestbook.php";
$guestbook_menu[$i][usertype] = 0;
$i++;

$guestbook_menu[$i][caption] = "List Guest Book";
$guestbook_menu[$i][url]="admin_list_guestbooks.php"; 
$guestbook_menu[$i][usertype] = USERTYPE_ADMIN;
$i++;









?>
