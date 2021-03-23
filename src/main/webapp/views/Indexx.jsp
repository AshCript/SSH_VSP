<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="jq" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
	<s:url namespace="/" action="client" var="lienClients" />
	<s:url namespace="/" action="sp" var="lienSp" />
	<s:url namespace="/" action="cmd" var="lienCmd" />
		<div>
			Page d'accueil avec les liens vers<br/>
			<ul>
				<li>
					<s:a href="%{lienClients}">La partie gestion des clients</s:a>
				</li>
				<li><s:a href="%{lienSp}">La partie gestion des produits</s:a></li>
				<li><s:a href="%{lienCmd}">La partie gestion des Commandes</s:a></li>
			</ul>
		</div>
	</body>
</html>