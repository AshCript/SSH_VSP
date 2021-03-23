<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="jq" %>	
<div class="cadre">
	<h4>Modification de l'information d'un client existant</h4>
	<s:form action="saveEditedClient" method="post">
		<s:textfield name="idClient" value="%{client.idClient}"  style="display: none"/>
		<s:textfield name="nom" label="Nom" value="%{client.nom}"/>
		<s:textfield name="prenom" label="Prénom" value="%{client.prenom}"/>
		<s:textfield name="cin" label="CIN" value="%{client.CIN}"/>
		<s:radio list="{'Masculin', 'Féminin'}" name="sexe" label="Sexe" value="%{client.sexe}"/>
		<s:textfield name="adresse" label="Adresse" value="%{client.adresse}"/>
		<s:textfield name="ville" label="Ville" value="%{client.ville}"/>
		<s:submit  value="Update"/>
	</s:form>
</div>