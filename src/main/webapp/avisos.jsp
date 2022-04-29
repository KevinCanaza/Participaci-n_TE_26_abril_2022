<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Aviso"%>
<%
    List<Aviso> avisos = (List<Aviso>) request.getAttribute("avisos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilos.css">
    </head>
    <body>
        <div class="container">
            <h1 class="alinear">Listado de avisos</h1>
            <a class="anuevo" href="AvisoController?action=add">Nuevo</a>
            <table>
                <tr>
                    <th>Id</th>
                    <th>Titulo</th>
                    <th>Contenido</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${avisos}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.titulo}</td>
                        <td>${item.contenido}</td>
                        <td><a class="ablue" href="AvisoController?action=edit&id=${item.id}">Editar</a></td>
                        <td><a class="ared" href="AvisoController?action=delete&id=${item.id}">Eliminar</a></td>
                    </tr>              
                </c:forEach>
            </table>
        </div>
        <a class="avolver" href="index.jsp">Volver</a>
 
    </body>
</html>
