<?xml version="1.0" encoding="{THEME_CHARSET}" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset={THEME_CHARSET}" />
		<meta http-equiv="X-UA-Compatible" content="IE=8" />
		<title>{TR_HTACCESS}</title>
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
		function action_delete(url, subject) {
			return confirm(sprintf("{TR_MESSAGE_DELETE}", subject));
		}

		function begin_js() {
			document.forms[0].elements["users[]"].disabled = {USER_FORM_ELEMENS};
			document.forms[0].elements["groups[]"].disabled = {GROUP_FORM_ELEMENS};
		}

		function changeType(wath) {
			document.forms[0].elements["users[]"].disabled = wath != "user";
			document.forms[0].elements["groups[]"].disabled = wath == "user";
		}
		/* ]]> */
		</script>
	</head>

	<body>
		<div class="header">
			{MAIN_MENU}

			<div class="logo">
				<img src="{THEME_COLOR_PATH}/images/ispcp_logo.png" alt="IspCP logo" />
				<img src="{THEME_COLOR_PATH}/images/ispcp_webhosting.png" alt="IspCP omega" />
			</div>
		</div>

		<div class="location">
			<div class="location-area icons-left">
				<h1 class="webtools">{TR_MENU_WEBTOOLS}</h1>
			</div>
			<ul class="location-menu">
				<!-- <li><a class="help" href="#">Help</a></li> -->
				<!-- BDP: logged_from -->
				<li><a class="backadmin" href="change_user_interface.php?action=go_back">{YOU_ARE_LOGGED_AS}</a></li>
				<!-- EDP: logged_from -->
				<li><a class="logout" href="../index.php?logout">{TR_MENU_LOGOUT}</a></li>
			</ul>
			<ul class="path">
				<li><a href="webtools.php">{TR_MENU_WEBTOOLS}</a></li>
				<li><a href="protected_areas.php">{TR_HTACCESS}</a></li>
				<li>{TR_PROTECT_DIR}</li>
			</ul>
		</div>

		<div class="left_menu">
			{MENU}
		</div>


		<div class="body">
			<!-- BDP: page_message -->
			<div class="warning">{MESSAGE}</div>
			<!-- EDP: page_message -->

			<form name="edit_ftp_acc_frm" method="post" action="protected_areas_add.php">
				<fieldset>
					<legend>{TR_PROTECT_DIR}</legend>
					<table>
						<tr>
							<td><label for="path">{TR_PATH}</label></td>
							<td>
								<input name="other_dir" type="text" class="textinput" id="path"  value="{PATH}" />
								<a href="#" onclick="showFileTree();" class="icon i_bc_folder">{CHOOSE_DIR}</a>
							</td>
						</tr>
					</table>
				</fieldset>

				<fieldset>
					<legend>{TR_AREA_NAME}</legend>
					<table>
						<tr>
							<td>
								<input name="paname" type="text" class="textinput" id="paname" value="{AREA_NAME}" />
							</td>
						</tr>
					</table>
				</fieldset>

				<table>
					<thead>
						<tr>
							<th>{TR_USER}</th>
							<th>{TR_GROUPS}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><label for="ptype_1">{TR_USER_AUTH}</label><input type="radio" id="ptype_1" name="ptype" value="user" {USER_CHECKED} onfocus="changeType('user');" /></td>
							<td><label for="ptype_2">{TR_GROUP_AUTH}</label><input type="radio" id="ptype_2" name="ptype" value="group" {GROUP_CHECKED} onfocus="changeType('group');" /></td>
						</tr>
						<tr>
							<td>
								<select name="users[]" multiple="multiple" size="5">
									 <!-- BDP: user_item -->
									 	<option value="{USER_VALUE}" {USER_SELECTED}>{USER_LABEL}</option>
									 <!-- EDP: user_item -->
								</select>
							</td>
							<td>
								<select name="groups[]" multiple="multiple" size="5">
									<!-- BDP: group_item -->
										<option value="{GROUP_VALUE}" {GROUP_SELECTED}>{GROUP_LABEL}</option>
									<!-- EDP: group_item -->
								</select>
							</td>
						</tr>
					</tbody>
				</table>

				<input type="hidden" name="use_other_dir" />
				<input type="hidden" name="sub" value="YES" />
				<input type="hidden" name="cdir" value="{CDIR}" />
				<input type="hidden" name="uaction" value="" />

				<div class="buttons">
					<input name="Button" type="button"  value="{TR_PROTECT_IT}" onclick="return sbmt(document.forms[0],'protect_it');" />
					<!-- BDP: unprotect_it -->
						<input name="Button" type="button" onclick="MM_goToURL('parent','protected_areas_delete.php?id={CDIR}');return document.MM_returnValue" value="{TR_UNPROTECT_IT}" />
					<!-- EDP: unprotect_it -->
					<input name="Button" type="button" onclick="MM_goToURL('parent','protected_user_manage.php');return document.MM_returnValue" value="{TR_MANAGE_USRES}" />
					<input name="Button" type="button" onclick="MM_goToURL('parent','protected_areas.php');return document.MM_returnValue" value="{TR_CANCEL}" />
				</div>
			</form>
		</div>

		<div class="footer">
			ispCP {VERSION}<br />build: {BUILDDATE}<br />Codename: {CODENAME}
		</div>

	</body>
</html>
