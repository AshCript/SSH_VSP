<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="jq" %>	
<div class="cadre">
	<h4>À propos de <s:property value="%{smartphone.marque}"/> <s:property value="%{smartphone.model}"/></h4>
	<table>
		<tr>
			<td>Système</td>
			<td>:</td>
			<td><s:property value="%{smartphone.systeme}"/></td>
		</tr>
		<tr>
			<td>Version</td>
			<td>:</td>
			<td><s:property value="%{smartphone.version}"/></td>
		</tr>
		<tr>
			<td>Nombre de processeurs</td>
			<td>:</td>
			<td><s:property value="%{smartphone.nombre_processeur}"/></td>
		</tr>
		<tr>
			<td>Battérie</td>
			<td>:</td>
			<td><s:property value="%{smartphone.capaciteBatt}"/></td>
		</tr>
		<tr>
			<td>Stockage interne</td>
			<td>:</td>
			<td><s:property value="%{smartphone.rom}"/></td>
		</tr>
		<tr>
			<td>RAM</td>
			<td>:</td>
			<td><s:property value="%{smartphone.ram}"/></td>
		</tr>
		<tr>
			<td>Taille</td>
			<td>:</td>
			<td><s:property value="%{smartphone.pouce}"/></td>
		</tr>
		<tr>
			<td>Selfie</td>
			<td>:</td>
			<td><s:property value="%{smartphone.frontCam}"/></td>
		</tr>
		<tr>
			<td>Caméra à l'arrière</td>
			<td>:</td>
			<td><s:property value="%{smartphone.backCam}"/></td>
		</tr>
		<tr>
			<td>Prix</td>
			<td>:</td>
			<td><s:property value="%{smartphone.prixMGA}"/></td>
		</tr>
	</table>
</div>