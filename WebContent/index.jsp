<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Modeles.*"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<script language="javascript">AC_FL_RunContent = 0;</script>
<script src="AC_RunActiveContent.js" language="javascript"></script>
	<title>WebAnnonces</title>
	<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
</head>
<% 
	Constante Constante = new Constante();
	String UserName = (String)session.getAttribute("UserName");
	String Password = (String)session.getAttribute("Password");
	String message = (String)session.getAttribute("message");

	Integer IdCat = (Integer)session.getAttribute("IdCat");
	Integer IdUser = (Integer)session.getAttribute("IdUser");
%>

<body ">
	<div id="wrapper" >
			
			<div id="photo" >
				<h1><img id="logo" src="images/logo3.png"></h1>

			
			
			
			<script language="javascript">
					if (AC_FL_RunContent == 0) {
						alert("Cette page nécessite le fichier AC_RunActiveContent.js.");
					} else {
					AC_FL_RunContent(
					'codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0',
					'width', '670',
					'height', '300',
					'src', 'anim',
					'quality', 'high',
					'pluginspage', 'http://www.macromedia.com/go/getflashplayer',
					'align', 'middle',
					'play', 'true',
					'loop', 'true',
					'scale', 'showall',
					'wmode', 'window',
					'devicefont', 'false',
					'id', 'anim',
					'bgcolor', '#ffffff',
					'name', 'anim',
					'menu', 'true',
					'allowFullScreen', 'false',
					'allowScriptAccess','sameDomain',
					'movie', 'anim',
					'salign', ''
					); //end AC code
					}
				</script>
				<noscript>
					<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="670" height="300" id="anim" align="middle">
					<param name="allowScriptAccess" value="sameDomain" />
					<param name="allowFullScreen" value="false" />
					<param name="movie" value="anim.swf" /><param name="quality" value="high" /><param name="bgcolor" value="#ffffff" />	<embed src="anim.swf" quality="high" bgcolor="#ffffff" width="670" height="300" name="anim" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
				</object>
				</noscript>
			
			
			
								
			
				
			</div>
		<div id="header">

			<div id="nav">
				<a href="webannonces"><p width="66" height="41" >Accueil</p></a>
				<a href="webannonces?page=/WEB-INF/inscription.jsp"><p width="87" >Inscrire</p></a>
				<a href="webannonces?page=/WEB-INF/consulter.jsp"><p width="83" height="41" >Consulter</p></a>
				<a href="webannonces?page=/WEB-INF/publier.jsp"><p width="72" height="41" >Publier</p></a>
				<a href="webannonces?page=/WEB-INF/admin.jsp"><p width="84" height="41" >Administrer</p></a>
			</div>
		</div>
		
		<div id="headline">

			
			
			<div id="search-news">
				
				<h2 class="downcast">Authentification</h2>

				<div id="news-box">
					<div id="search-news">
					<form action ="webannonces?page=/#&action1=Authentifier" method="post">
						<table>
							<%		
								if (UserName==null || Password==null){
									if (message!=null){
										out.println("<font color=#ff3300>"+message+"!!!</font>");
									}
							%>
							<tr>
								<td>Nom d'utilisateur:</td>
								<td><div><input type="text" name="txtUserName" value="" id="q" /></div></td>
							</tr>
							<tr>
								<td>Mot de pass:</td>
								<td><div><input type="password" name="txtPassword" value="" maxlength="8" id="q" /></div></td>
							</tr>
							<tr>
								<td></td>
								<td>
									<div class="more">
										<input type="image" name="ok" value="" src="images/btn_ok.gif">
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<a href="webannonces?page=/WEB-INF/inscription.jsp" title="">S'inscrire</a>
								</td>
							</tr>
							<%
								}else{
									out.println("Bienvenue <font color = #ED5929>"+UserName+"</font>");
							%>
							<a href="webannonces?page=/WEB-INF/monprofil.jsp&action1=logout">Deconnexion</a>
						</table>
							<h2 class="downcast">Profil</h2>
						<table>
							<a href="webannonces?page=/WEB-INF/monprofil.jsp">Consulter Mon Profil</a>
						<%
							}
						%>
						</table>
					</form>


					</div>
				</div>
				
			</div>
			
			
		</div>
		
		<div id="body">
			<div id="body-left">
				
			</div>
			<div id="body-right" >
				
			</div>
		</div>
		<div class="clear">
			
		</div>
	</div>

	</div>
	<div id="footer" >
		<p>&copy; 2020 all rights reserved.</p>
		<p>&copy; ELM IMMOBILIER.</p>
	</div>
</body>
</html>
