<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="jq" %>	
<div class="cadre">
	<h4>Modification de l'information de : <s:property value="smartphone.marque"/> <s:property value="smartphone.model"/></h4>
	<s:form action="saveEditedSmartphone" method="post">
		<s:hidden name="idSmartphone" value="%{idSp}"/>
		<s:textfield name="marque" label="Marque" value="%{smartphone.marque}"/>
		<s:textfield name="model" label="Model" value="%{smartphone.model}" />
		<s:textfield name="systeme" label="Système" value="%{smartphone.systeme}"/>
		<s:textfield name="version" label="Version du Système"  value="%{smartphone.version}"/>
		<s:textfield name="nombre_processeur" label="Nb. Pcs"  value="%{smartphone.nombre_processeur}"/>
		<s:textfield name="capaciteBatt" label="Battérie (MAh)"  value="%{smartphone.capaciteBatt}"/>
		<s:textfield name="rom" label="Stockage interne (Go)"  value="%{smartphone.rom}"/>
		<s:textfield name="ram" label="RAM (Go)"  value="%{smartphone.ram}"/>
		<s:textfield name="pouce" label="Taille (pouce)"  value="%{smartphone.pouce}"/>
		<s:textfield name="frontCam" label="Selfie (mpx))"  value="%{smartphone.frontCam}"/>
		<s:textfield name="backCam" label="Caméra à l'arrière (mpx)"  value="%{smartphone.backCam}"/>
		<s:textfield name="prixMGA" label="Prix (Ar)"   value="%{smartphone.prixMGA}"/>
		<s:submit  value="Update"/>
	</s:form>
</div>