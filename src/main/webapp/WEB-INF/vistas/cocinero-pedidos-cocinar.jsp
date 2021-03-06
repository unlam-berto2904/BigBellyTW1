<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Pedidos a Preparar</h1>
	<c:forEach var="pedido" items="${listaPedidosACocinar}">
		<form:form action="/cocinero/actualizar-a-pendiente-entrega" method="POST" modelAttribute="pedido">
			<label for="idPedido">ID Pedido</label>
			<form:input path="idPedido" id="idPedido" type="text" class="form-control" readonly="true" value="${pedido.idPedido}" />
			<label for="fechaHora">Fecha y Hora</label>
			<form:input path="fechaHora" id="fechaHora" type="text" class="form-control" readonly="true" value="${pedido.fechaHora}"/>
			<label for="descripcion">Descripcion</label>
			<form:input path="descripcion" id="descripcion" type="text" class="form-control" readonly="true" value="${pedido.descripcion}"/>     			
			<button type="submit" class="btn btn-default">Preparado!</button>		  
		</form:form>
		${pedido.idPedido}
		${pedido.fechaHora}
		${pedido.descripcion}
	</c:forEach>
</body>
</html>