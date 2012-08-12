<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="javax.servlet.jsp.jstl.core.LoopTagSupport"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="message">${msg}</div>
<br />

<table style="width: 100%;font-size: 12px;" border="0">
	<tr style="font-weight: bold;">
		<td width="25">&nbsp;</td>
		<td>Document</td>
		<td width="125">Created Date</td>
		<td width="125">Updated Date</td>
		<td width="100">Size</td>
	</tr>

	<c:forEach items="${lst}" var="item" varStatus="status">
		<c:if test="${item.documentType eq 'application/msword'}">
			<s:url value="/assets/images/word-icon.png" var="icon" />
		</c:if>
		<c:if test="${item.documentType eq 'application/pdf'}">
			<s:url value="/assets/images/pdf-icon.png" var="icon" />
		</c:if>
		<c:if test="${item.documentType eq 'text/plain'}">
			<s:url value="/assets/images/text-icon.png" var="icon" />
		</c:if>
		<c:if test="${item.documentType eq 'application/vnd.ms-excel'}">
			<s:url value="/assets/images/excel-icon.png" var="icon" />
		</c:if>

		<tr>
			<td width="25">
			<div
				style="width: 25px; height: 25px; float: left; margin-right: 10px;"><img
				src="${icon}" /></div>
			</td>
			<td><a href="<s:url value="/download/${item.metadataId}"/>">${item.documentFileName}</a></td>
			<td width="125"><fmt:formatDate value="${item.createdDate}" /></td>
			<td width="125">
				<c:if test="${updatedDate eq null}">
					Not Updated Yet
				</c:if>
			</td>
			<td width="100">${item.documentSize}&nbsp;Bytes</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>