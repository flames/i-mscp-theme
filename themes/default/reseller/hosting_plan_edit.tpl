<?xml version="1.0" encoding="{THEME_CHARSET}" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset={THEME_CHARSET}" />
		<meta http-equiv="X-UA-Compatible" content="IE=8" />
		<title>{TR_RESELLER_MAIN_INDEX_PAGE_TITLE}</title>
		<meta name="robots" content="nofollow, noindex" />
		<link href="{THEME_COLOR_PATH}/css/ispcp.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="{THEME_COLOR_PATH}/js/ispcp.js"></script>
		<!--[if IE 6]>
		<script type="text/javascript" src="{THEME_COLOR_PATH}/js/DD_belatedPNG_0.0.8a-min.js"></script>
		<script type="text/javascript">
			DD_belatedPNG.fix('*');
		</script>
		<![endif]-->
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
				<h1 class="hosting_plans">{TR_MENU_HOSTING_PLANS}</h1>
			</div>
			<ul class="location-menu">
				<!-- <li><a class="help" href="#">Help</a></li> -->
				<!-- BDP: logged_from -->
				<li><a class="backadmin" href="change_user_interface.php?action=go_back">{YOU_ARE_LOGGED_AS}</a></li>
				<!-- EDP: logged_from -->
				<li><a class="logout" href="../index.php?logout">{TR_MENU_LOGOUT}</a></li>
			</ul>
			<ul class="path">
				<li><a href="hosting_plan.php">{TR_MENU_HOSTING_PLANS}</a></li>
				<li><a href="hosting_plan.php">{TR_MENU_OVERVIEW}</a></li>
				<li>{TR_EDIT_HOSTING_PLAN}</li>
			</ul>
		</div>

		<div class="left_menu">
			{MENU}
		</div>


		<div class="body">
				<h2 class="serverstatus"><span>{TR_EDIT_HOSTING_PLAN}</span></h2>
				<!-- BDP: page_message -->
					<div class="warning">{MESSAGE}</div>
				<!-- EDP: page_message -->

				<form name="reseller_edit_host_plant_frm" method="post" action="hosting_plan_edit.php">
					<fieldset>
						<legend>{TR_HOSTING PLAN PROPS}</legend>
						<table>
							<tr>
								<td><label for="hp_name">{TR_TEMPLATE_NAME}</label></td>
								<td><input id="" type="text" name="hp_name" value="{HP_NAME_VALUE}" {READONLY}/></td>
							</tr>
							<tr>
								<td><label for="hp_description">{TR_TEMPLATE_DESCRIPTON}</label></td>
								<td><textarea id="hp_description" name="hp_description" cols="40" rows="8" {READONLY}>{HP_DESCRIPTION_VALUE}</textarea></td>
							</tr>
							<tr>
								<td><label for="hp_sub">{TR_MAX_SUBDOMAINS}</label></td>
								<td><input id="hp_sub"  type="text" name="hp_sub" value="{TR_MAX_SUB_LIMITS}" {READONLY}/></td>
							</tr>
							<tr>
								<td><label for="hp_als">{TR_MAX_ALIASES}</label></td>
								<td><input id="hp_als" type="text" name="hp_als" value="{TR_MAX_ALS_VALUES}" {READONLY} /></td>
							</tr>
							<tr>
								<td><label for="hp_mail">{TR_MAX_MAILACCOUNTS}</label></td>
								<td><input id="hp_mail" type="text" name="hp_mail" value="{HP_MAIL_VALUE}"  {READONLY}/></td>
							</tr>
							<tr>
								<td><label for="hp_ftp">{TR_MAX_FTP}</label></td>
								<td><input id="hp_ftp" type="text" name="hp_ftp" value="{HP_FTP_VALUE}"  {READONLY}/></td>
							</tr>
							<tr>
								<td><label for="hp_sql_db">{TR_MAX_SQL}</label></td>
								<td><input id="hp_sql_db" type="text" name="hp_sql_db" value="{HP_SQL_DB_VALUE}"  {READONLY}/></td>
							</tr>
							<tr>
								<td><label for="hp_sql_user">{TR_MAX_SQL_USERS}</label></td>
								<td><input id="hp_sql_user" type="text" name="hp_sql_user" value="{HP_SQL_USER_VALUE}" {READONLY} /></td>
							</tr>
							<tr>
								<td><label for="hp_traff">{TR_MAX_TRAFFIC}</label></td>
								<td><input id="hp_traff" type="text" name="hp_traff" value="{HP_TRAFF_VALUE}" {READONLY} /></td>
							</tr>
							<tr>
								<td><label for="hp_disk">{TR_DISK_LIMIT}</label></td>
								<td><input id="hp_disk"  type="text" name="hp_disk" value="{HP_DISK_VALUE}"  {READONLY}/></td>
							</tr>
							<tr>
								<td>{TR_PHP}</td>
								<td>
									<input type="radio" name="php" value="_yes_" {TR_PHP_YES} id="php_yes" {DISBLED}/><label for="php_yes">{TR_YES}</label>
									<input type="radio" name="php" value="_no_" {TR_PHP_NO} id="php_no"  {DISBLED}/><label for="php_no">{TR_NO}</label>
								</td>
							</tr>
							<tr>
								<td>{TR_CGI}</td>
								<td>
									<input type="radio" name="cgi" value="_yes_" {TR_CGI_YES} id="cgi_yes" {DISBLED}/><label for="cgi_yes">{TR_YES}</label>
									<input type="radio" name="cgi" value="_no_" {TR_CGI_NO} id="cgi_no"  {DISBLED}/><label for="cgi_no">{TR_NO}</label>
								</td>
							</tr>
							<tr>
								<td>{TR_DNS}</td>
								<td>
									<input type="radio" name="dns" value="_yes_" {TR_DNS_YES} id="dns_yes" {DISBLED}/><label for="dns_yes">{TR_YES}</label>
									<input type="radio" name="dns" value="_no_" {TR_DNS_NO} id="dns_no" {DISBLED} /><label for="dns_no">{TR_NO}</label>
								</td>
							</tr>
							<tr>
								<td>{TR_BACKUP}</td>
								<td>
									<input type="radio" name="backup" value="_dmn_" {VL_BACKUPD} id="backup_dmn" {DISBLED}/><label for="backup_dmn">{TR_BACKUP_DOMAIN}</label>
									<input type="radio" name="backup" value="_sql_" {VL_BACKUPS} id="backup_sql"  {DISBLED}/><label for="backup_sql">{TR_BACKUP_SQL}</label>
									<input type="radio" name="backup" value="_full_" {VL_BACKUPF} id="backup_full"  {DISBLED}/><label for="backup_full">{TR_BACKUP_FULL}</label>
									<input type="radio" name="backup" value="_no_" {VL_BACKUPN} id="backup_none"  {DISBLED}/><label for="backup_none">{TR_BACKUP_NO}</label>
								</td>
							</tr>
						</table>
					</fieldset>
					<fieldset>
						<legend>{TR_BILLING_PROPS}</legend>
						<table>
							<tr>
								<td><label for="hp_price">{TR_PRICE}</label></td>
								<td><input name="hp_price" type="text" id="hp_price" value="{HP_PRICE}" {READONLY} /></td>
							</tr>
							<tr>
								<td><label for="hp_setupfee">{TR_SETUP_FEE}</label></td>
								<td><input name="hp_setupfee" type="text" id="hp_setupfee" value="{HP_SETUPFEE}"  {READONLY}/></td>
							</tr>
							<tr>
								<td><label for="hp_currency">{TR_VALUE}</label></td>
								<td><input name="hp_currency" type="text" id="hp_currency" value="{HP_CURRENCY}" {READONLY} /><span class="legend">{TR_EXAMPLE}</span></td>
							</tr>
							<tr>
								<td><label for="hp_payment">{TR_PAYMENT}</label></td>
								<td><input name="hp_payment" type="text" id="hp_payment" value="{HP_PAYMENT}"  {READONLY}/></td>
							</tr>
							<tr>
								<td>{TR_STATUS}</td>
								<td>
									<input type="radio" name="status" value="1" {TR_STATUS_YES} id="status_yes" {DISBLED}/><label for="status_yes">{TR_YES}</label>
									<input type="radio" name="status" value="0" {TR_STATUS_NO} id="status_no"  {DISBLED}/><label for="status_no">{TR_NO}</label>
								</td>
							</tr>
						</table>
					</fieldset>
					<!-- BDP: form -->
						<div class="buttons">
							<input name="Submit" type="submit" value="{TR_UPDATE_PLAN}" />
						</div>
						<input type="hidden" name="uaction" value="add_plan" />
					<!-- EDP: form -->
				</form>

		</div>

		<div class="footer">
			ispCP {VERSION}<br />build: {BUILDDATE}<br />Codename: {CODENAME}
		</div>

	</body>
</html>
