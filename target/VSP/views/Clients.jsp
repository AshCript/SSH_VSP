<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="jq" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<s:url namespace="/" action="formClient" var="lienFormClient"/>
		<div>
			<h1>Page de Gestion des Clients</h1>
		</div>
		<div class="cadre">
			<h4>Insertion d'un nouveau Client</h4>
			<s:form action="saveClient" method="post">
				<s:textfield name="idClient" type="hidden"/>
				<s:textfield name="nom" label="Nom" value=""/>
				<s:textfield name="prenom" label="Prénom"  value=""/>
				<s:textfield name="cin" label="CIN"  value=""/>
				<s:radio list="{'Masculin', 'Féminin'}" name="sexe"  value="" label="Sexe"/>
				<s:textfield name="adresse" label="Adresse"  value=""/>
				<s:textfield name="ville" label="Ville"  value=""/>
				<s:submit  value="Save"/>
			</s:form>
		</div>
		<div class="cadre">
		<h4>La liste de tous les clients</h4>
			<table class="table1">
				<tr>
					<th>ID</th>
					<th>Nom</th>
					<th>Prénom</th>
					<th>CIN</th>
					<th>Sexe</th>
					<th>Adresse</th>
					<th>Ville</th>
				</tr>
				<s:iterator value="listClients">
				<tr>
					<td><s:property value="idClient"/></td>
					<td><s:property value="nom"/></td>
					<td><s:property value="prenom"/></td>
					<td><s:property value="CIN"/></td>
					<td>
						<s:if test="%{sexe == 'M'}">
							Masculin
						</s:if>
						<s:else>
							Féminin
						</s:else>
					</td>
					<td><s:property value="adresse"/></td>
					<td><s:property value="ville"/></td>
					<s:url namespace="/" action="editClient" var="lienEditClient">
						<s:param name="idCli">
							<s:property value="idClient"/>
						</s:param>
					</s:url>
					<s:url namespace="/" action="deleteClient" var="lienDeleteClient">
						<s:param name="idCli">
							<s:property value="idClient"/>
						</s:param>
					</s:url>
					<td><s:a href="%{lienEditClient}">Modifier</s:a></td>
					<td><s:a href="%{lienDeleteClient}">Supprimer</s:a></td>
				</tr>
				</s:iterator>
			</table>
		</div>
	</body>
</html>