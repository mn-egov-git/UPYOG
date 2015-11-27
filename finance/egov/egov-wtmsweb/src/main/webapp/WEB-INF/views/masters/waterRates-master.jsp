<!-- #-------------------------------------------------------------------------------
# eGov suite of products aim to improve the internal efficiency,transparency, 
#    accountability and the service delivery of the government  organizations.
# 
#     Copyright (C) <2015>  eGovernments Foundation
# 
#     The updated version of eGov suite of products as by eGovernments Foundation 
#     is available at http://www.egovernments.org
# 
#     This program is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     any later version.
# 
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
# 
#     You should have received a copy of the GNU General Public License
#     along with this program. If not, see http://www.gnu.org/licenses/ or 
#     http://www.gnu.org/licenses/gpl.html .
# 
#     In addition to the terms of the GPL license to be adhered to in using this
#     program, the following additional terms are to be complied with:
# 
# 	1) All versions of this program, verbatim or modified must carry this 
# 	   Legal Notice.
# 
# 	2) Any misrepresentation of the origin of the material is prohibited. It 
# 	   is required that all modified versions of this material be marked in 
# 	   reasonable ways as different from the original version.
# 
# 	3) This license does not grant any rights to any user of the program 
# 	   with regards to rights under trademark law for use of the trade names 
# 	   or trademarks of eGovernments Foundation.
# 
#   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
#------------------------------------------------------------------------------- -->
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    <%--  <form role="form" class="form-horizontal form-groups-bordered"> --%>
    <form:form method ="post" action="" class="form-horizontal form-groups-bordered" 
    modelAttribute="waterRatesHeader" id="donationDetailsform"
			cssClass="form-horizontal form-groups-bordered"
			enctype="multipart/form-data">
<form:hidden path="connectionType" value="${waterRatesConnecionType}" id="connectionType" name="waterRatesConnecionType"/>
<div class="form-group">
       <label class="col-sm-4 control-label text-right"><spring:message
			code="lbl.watersourcetype" /><span class="mandatory"></span></label>
	<div class="col-sm-3 add-margin">
		<form:select path="waterSource" data-first-option="false" id="waterSource"
			cssClass="form-control" required="required">
			<form:option value="">
				<spring:message code="lbl.select" />
			</form:option>
			
			<form:options items="${waterSourceTypes}" itemValue="id"
				itemLabel="waterSourceType" />
		</form:select>
		<form:errors path="waterSource" cssClass="add-margin error-msg" />
	</div>
	</div>
	<div class="form-group">
	<label class="col-sm-4 control-label text-right"><spring:message
			code="lbl.usagetype" /><span class="mandatory"></span></label>
	<div class="col-sm-3 add-margin">
		<form:select path="usageType" data-first-option="false" id="usageType"
			cssClass="form-control" required="required">
			<form:option value="">
				<spring:message code="lbl.select" />
			</form:option>
			<form:options items="${usageType}" itemValue="id"
				itemLabel="name" />
		</form:select>
		<form:errors path="usageType" cssClass="add-margin error-msg" />
	</div>
</div>
<div class="form-group">
<label class="col-sm-4 control-label text-right"><spring:message
			code="lbl.hscpipesize.inches" /><span class="mandatory"></span></label>
	<div class="col-sm-3 add-margin">
		<form:select path="pipeSize" data-first-option="false" id="pipeSize"
			cssClass="form-control" required="required" >
			<form:option value="">
				<spring:message code="lbl.select" />
			</form:option>
			<form:options items="${maxPipeSize}" itemValue="id" 
				itemLabel="code" />
		</form:select>		
		<form:errors path="pipeSize" cssClass="add-margin error-msg" />					
	</div>
</div>
<c:forEach items="${waterRatesHeader.waterRatesDetails}" var="var1"
												varStatus="counter">
											<div class="form-group"><label class="col-sm-4 control-label text-right">Monthly Rate
			<span class="mandatory"></span></label> 	<div class="col-sm-3 add-margin">
		<input type="text" class="form-control patternvalidation" data-pattern="number" maxlength="6"
		name="waterRatesDetails[${counter.index}].monthlyRate" 
		id="waterRatesDetails[${counter.index}].monthlyRate" required="required"  id="donationAmount"/>
												</div></div>
												<div class="form-group">	<label class="col-sm-4 control-label text-right"><spring:message
								code="lbl.effective.fromdate" /><span class="mandatory"></span></label><div class="col-sm-3 add-margin"> <input type="text"
														name="waterRatesDetails[${counter.index}].fromDate"
														id="waterRatesDetails[${counter.index}].fromDate"
														class="form-control datepicker" 
								data-inputmask="'mask': 'd/m/y'" required="required"></div></div>
<%-- <div class="form-group">

	<label class="col-sm-4 control-label text-right">Monthly Rate
			<span class="mandatory"></span></label> 
	<div class="col-sm-3 add-margin">
		<form:input class="form-control patternvalidation" data-pattern="number" maxlength="6" id="donationAmount" path="var1.monthlyRate" />
		<form:errors path="var1.monthlyRate" cssClass="add-margin error-msg" />		
	</div>
</div>
<div class="form-group">
<label class="col-sm-4 control-label text-right"><spring:message
								code="lbl.effective.fromdate" /><span class="mandatory"></span></label>
						<div class="col-sm-3 add-margin">
							<form:input  path="var1.fromDate"  
								class="form-control datepicker" data-date-end-date="0d"
								id="effectiveDate" data-inputmask="'mask': 'd/m/y'" required="required" />
								<form:errors path="var1.fromDate" cssClass="add-margin error-msg" />
						</div>
</div> --%>
</c:forEach>
<form:hidden id="typeOfConnection" path="" value="${typeOfConnection}"/>
<div class="form-group text-center" >
						<form:button type="button" class="btn btn-primary" id="buttonid"><spring:message code="lbl.submit"/></form:button>
						<a onclick="self.close()" class="btn btn-default" href="javascript:void(0)"><spring:message code="lbl.close"/></a>
					</div>
	</form:form>
				<link rel="stylesheet" href="<c:url value='/resources/global/js/jquery/plugins/datatables/responsive/css/datatables.responsive.css' context='/egi'/>">
                <script src="<c:url value='/resources/global/js/jquery/plugins/datatables/jquery.dataTables.min.js' context='/egi'/>"
	            type="text/javascript"></script>
                <script src="<c:url value='/resources/global/js/jquery/plugins/datatables/dataTables.bootstrap.js' context='/egi'/>"
	            type="text/javascript"></script>
                <script src="<c:url value='/resources/global/js/jquery/plugins/datatables/responsive/js/datatables.responsive.js' context='/egi'/>"
	            type="text/javascript"></script>
	           <script src="<c:url value='/resources/js/app/connectiondetails.js'/>"></script>
	           <script src="<c:url value='/resources/js/app/waterRates.js'/>"></script>					