<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="jq" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<s:url namespace="/" action="formClient" var="lienFormClient"/>
		<div>
			<h1>Page de Gestion des Commandes</h1>
		</div>
		<s:iterator value="listClients">
			
		</s:iterator>
		<div class="cadre">
			<h4>
				<s:if test = "%{editMode == false}">
					Insertion d'une nouveau Commande
				</s:if>
				<s:else>
					Modification d'une Commande
				</s:else>
			</h4>
			<s:form action="saveCmd" method="post">
				<s:hidden name="id" value="%{id}"/>
				Client: 
				<select name="idClient">
					<s:iterator value="listClients">
		    			<option value='<s:property value="idClient"/>' <s:if test="%{commande.client.idClient == idClient}">selected</s:if>><s:property value="idClient"/>- <s:property value="prenom"/></option>
					</s:iterator>
				</select>
				<br/>
				Smartphone: 
				<select name="idSmartphone">
					<s:iterator value="listSmartphones">
		    			<option value='<s:property value="idSmartphone"/>'  <s:if test="%{commande.smartphone.idSmartphone == idSmartphone}">selected</s:if>><s:property value="marque"/> <s:property value="model"/></option>
					</s:iterator>
				</select>
				<br/>
				Couleur:
				<select name="color">
		    			<option value='Blanc'  <s:if test="%{commande.color == 'Blanc'}">selected</s:if>>Blanc</option>
		    			<option value='Noir'  <s:elseif test="%{commande.color == 'Noir'}">selected</s:elseif>>Noir</option>
		    			<option value='Dorée'  <s:elseif test="%{commande.color == 'Dorée'}">selected</s:elseif>>Dorée</option>
		    			<option value='Rouge'  <s:elseif test="%{commande.color == 'Rouge'}">selected</s:elseif>>Rouge</option>
		    			<option value='Bleu'  <s:elseif test="%{commande.color == 'Bleu'}">selected</s:elseif>>Bleu</option>
				</select>
				<s:textfield name="quantite" label="Quantité" value= "%{commande.quantite}"/>
				<jq:datepicker name="date" label="date"></jq:datepicker>
				<s:hidden name="editMode" value="%{editMode}"/>
				<s:submit  value="Save"/>
			</s:form>
		</div>
		
		<div class="cadre">
		<h4>La liste des commandes</h4>
			<table class="table1">
				<tr>
					<th>Date</th>
					<th>Nom</th>
					<th>Prénom</th>
					<th>Marque</th>					
					<th>Couleur</th>
					<th>Quantité</th>
					<th>Prix Unitaire</th>
					<th>Montant</th>
				</tr>
				<s:iterator value="listCommandes">
					<tr>
						<td><s:property value="date"/></td>
						<td><s:property value="client.nom"/></td>
						<td><s:property value="client.prenom"/></td>
						<td><s:property value="smartphone.marque"/> <s:property value="smartphone.model"/></td>
						<td><s:property value="color"/></td>
						<td><s:property value="quantite"/></td>
						<td><s:property value="prixMGA"/></td>
						<td><s:property value="prixMGA*quantite"/></td>
						<s:url namespace="/" action="editCmd" var="lienEditCmd">
							<s:param name="id">
								<s:property value="id"/>
							</s:param>
							<s:param name="idClient">
								<s:property value="idClient"/>
							</s:param>
							<s:param name="idSmartphone">
								<s:property value="idSmartphone"/>
							</s:param>
							<s:param name="color">
								<s:property value="color"/>
							</s:param>
						</s:url>
						<s:url namespace="/" action="deleteCmd" var="lienDeleteCmd">
							<s:param name="id">
								<s:property value="id"/>
							</s:param>
						</s:url>
						<td><s:a href="%{lienEditCmd}">Modifier</s:a></td>
						<td><s:a href="%{lienDeleteCmd}">Supprimer</s:a></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</body>
</html>