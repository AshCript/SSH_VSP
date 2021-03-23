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
			<h1>Page de Gestion des Smartphones</h1>
		</div>
		<div class="cadre">
			<s:if test="editMode==false">
				<h4>Insertion d'un nouveau Smartphone</h4>
			</s:if>
			<s:if test="editMode==true">
				<h4>Modification du Smartphone : <s:property value="smartphone.marque"/> <s:property value="smartphone.model"/></h4>
			</s:if>
			<s:form action="saveSmartphone" method="post">
				<s:hidden name="idSmartphone" value="%{idSp}"/>
				<s:textfield name="marque" label="Marque" value="%{smartphone.marque}"/>
				<s:textfield name="model" label="Model" value="%{smartphone.model}"/>
				<s:textfield name="systeme" label="Système" value="%{smartphone.systeme}"/>
				<s:textfield name="version" label="Version du Système"  value="%{smartphone.version}"/>
				<s:textfield name="nombre_processeur" label="Nb. Pcs"  value="%{smartphone.nombre_processeur}"/>
				<s:textfield name="capaciteBatt" label="Battérie (MAh)"  value="%{smartphone.capaciteBatt}"/>
				<s:textfield name="rom" label="Stockage interne (Go)"  value="%{smartphone.rom}"/>
				<s:textfield name="ram" label="RAM (Go)"  value="%{smartphone.ram}"/>
				<s:textfield name="pouce" label="Taille (pouce)"  value="%{smartphone.pouce}"/>
				<s:textfield name="frontCam" label="Selfie (mpx))"  value="%{smartphone.frontCam}"/>
				<s:textfield name="backCam" label="Caméra à l'arrière (mpx)"  value="%{smartphone.backCam}"/>
				<s:textfield name="prixMGA" label="Prix (Ar)"  value="%{smartphone.prixMGA}"/>
				<s:hidden name="editMode" value="%{editMode}"/>
				<s:if test="editMode==false">
					<s:submit  value="Enregistrer"/>					
				</s:if>
				<s:elseif test="editMode==true">
					<s:submit  value="Enregistrer les modifications"/>
				</s:elseif>
			</s:form>
		</div>
		<div class="cadre">
		<h4>La liste de tous les Smartphones</h4>
			<table class="table1">
				<tr>
					<th>ID</th>
					<th>Marque</th>
					<th>Model</th>
				</tr>
				<s:iterator value="listSp">
				<tr>
					<td><s:property value="idSmartphone"/></td>
					<td><s:property value="marque"/></td>
					<td><s:property value="model"/></td>
					<s:url namespace="/" action="aboutSp" var="lienAboutSp">
						<s:param name="idSp">
							<s:property value="idSmartphone"/>
						</s:param>
					</s:url>
					<s:url namespace="/" action="editSp" var="lienEditSp">
						<s:param name="idSp">
							<s:property value="idSmartphone"/>
						</s:param>
					</s:url>
					<s:url namespace="/" action="deleteSp" var="lienDeleteSp">
						<s:param name="idSp">
							<s:property value="idSmartphone"/>
						</s:param>
					</s:url>
					<td><s:a href="%{lienAboutSp}">Détails</s:a></td>
					<td><s:a href="%{lienEditSp}">Modifier</s:a></td>
					<td><s:a href="%{lienDeleteSp}">Supprimer</s:a></td>
				</tr>
				</s:iterator>
			</table>
		</div>
	</body>
</html>