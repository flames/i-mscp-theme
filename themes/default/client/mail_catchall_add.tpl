<?xml version="1.0" encoding="{THEME_CHARSET}" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset={THEME_CHARSET}" />
		<meta http-equiv="X-UA-Compatible" content="IE=8" />
		<title>{TR_CLIENT_CREATE_CATCHALL_PAGE_TITLE}</title>
		<meta name="robots" content="nofollow, noindex" />
		<link href="{THEME_COLOR_PATH}/css/ispcp.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="{THEME_COLOR_PATH}/js/ispcp.js"></script>
		<!--[if IE 6]>
		<script type="text/javascript" src="{THEME_COLOR_PATH}/js/DD_belatedPNG_0.0.8a-min.js"></script>
		<script type="text/javascript">
			DD_belatedPNG.fix('*');
		</script>
		<![endif]-->
		<script type="text/javascript">
		/* <![CDATA[ */
		function changeType(what) {
			if (what == "normal") {
				document.forms[0].mail_id.disabled = false;
				document.forms[0].forward_list.disabled = true;
			} else {
				document.forms[0].mail_id.disabled = true;
				document.forms[0].forward_list.disabled = false;
			}
		}
		/* ]]> */
		</script>
	</head>
	<body onload="changeType('{DEFAULT}');">
		<div class="header">
			{MAIN_MENU}

			<div class="logo">
				<img src="{THEME_COLOR_PATH}/images/ispcp_logo.png" alt="IspCP logo" />
				<img src="{THEME_COLOR_PATH}/images/ispcp_webhosting.png" alt="IspCP omega" />
			</div>
		</div>

		<div class="location">
			<div class="location-area icons-left">
				<h1 class="email">{TR_MENU_EMAIL_ACCOUNTS}</h1>
			</div>
			<ul class="location-menu">
				<!-- <li><a class="help" href="#">Help</a></li> -->
				<!-- BDP: logged_from -->
				<li><a class="backadmin" href="change_user_interface.php?action=go_back">{YOU_ARE_LOGGED_AS}</a></li>
				<!-- EDP: logged_from -->
				<li><a class="logout" href="../index.php?logout">{TR_MENU_LOGOUT}</a></li>
			</ul>
			<ul class="path">
				<li><a href="mail_accounts.php">{TR_MENU_EMAIL_ACCOUNTS}</a></li>
				<li><a href="mail_catchall.php">{TR_MENU_CATCH_ALL_MAIL}</a></li>
				<li>{TR_CREATE_CATCHALL_MAIL_ACCOUNT}</li>
			</ul>
		</div>

		<div class="left_menu">
			{MENU}
		</div>

		<div class="body">
			<div id="fwd_help" class="tooltip">{TR_FWD_HELP}</div>

			<!-- BDP: page_message -->
			<div class="warning">{MESSAGE}</div>
			<!-- EDP: page_message -->

			<h2 class="email"><span>{TR_CREATE_CATCHALL_MAIL_ACCOUNT}</span></h2>

			<form name="create_catchall_frm" method="post" action="mail_catchall_add.php">
				<table>
					<tr>
						<td>
							<input type="radio" name="mail_type" id="mail_type1" value="normal" {NORMAL_MAIL} onclick="changeType('normal');" />
							<label for="mail_type1">{TR_MAIL_LIST}</label>
						</td>
						<td>
							<select name="mail_id">
								<!-- BDP: mail_list -->
									<option value="{MAIL_ID};{MAIL_ACCOUNT_PUNNY};">{MAIL_ACCOUNT}</option>
								<!-- EDP: mail_list -->
							</select>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="mail_type" id="mail_type2" value="forward" {FORWARD_MAIL} onclick="changeType('forward');" />
							<label for="mail_type2">{TR_FORWARD_MAIL}</label>
							<span class="icon i_help" onmouseover="showTip('fwd_help', event)" onmouseout="hideTip('fwd_help')" >Help</span>
						</td>
						<td><textarea name="forward_list" id="forward_list" cols="35" rows="5"></textarea></td>
					</tr>
				</table>

				<div class="buttons">
					<input name="Submit" type="submit" value="{TR_CREATE_CATCHALL}" />
				</div>

				<input type="hidden" name="uaction" value="create_catchall" />
				<input type="hidden" name="id" value="{ID}" />
			</form>

		</div>

		<div class="footer">
			ispCP {VERSION}<br />build: {BUILDDATE}<br />Codename: {CODENAME}
		</div>

	</body>
</html>
