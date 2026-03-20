<%-- 
    Document   : album-form
    Created on : 17 mar 2026, 7:13:11 p.m.
    Author     : Elite
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!<!-- necesario para jstl -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Mis Albums - Nébula</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/styles.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>

<body>
    <%@include file="/WEB-INF/jsp/fragments/header.jspf" %>
    <header class="about-header">
        <img src="${pageContext.request.contextPath}/assets/img/header2.jpg" />
        <h1>Mis Albums</h1>
    </header>

    <main class="about-main">

        <c:if test="${album==null}">
            
            Nuevo album

        </c:if>
            
        <c:if test="${album != null}">
            
            Editar album

        </c:if>    
            
        <c:if test="${error != null}">
            
            <p style="color: red">${error}</p>

        </c:if>      
       
            <form action="albums" method="post" enctype="multipart/form-data">
                <input type="hidden" name="id" value="${album.id}">
                
                <label>Titulo</label>
                <br><!-- comment -->
                
                <input type="text" name="titulo" value="${album.titulo}" required>
                
                <label>Descripción</label>
                <br><!-- comment -->
                
                <textarea name="titulo" required value="${album.descripcion}"></textarea>
                
                <label>Portada</label>
                <br><!-- comment -->
                
                <input type="file" name="imagen"  accept="imagen/png" required></textarea>
                <br><br><!-- comment -->
                
                <button type="submit">Guardar</button>
                
                <a href="albums">Volver</a>
                
                
            </form>

    </main>
    <%@include file="/WEB-INF/jsp/fragments/footer.jspf" %>
</body>

</html>
