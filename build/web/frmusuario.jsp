<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Usuario</title>
    </head>
    <body>
           <div align="center">
         <h1>Segundo Examen Tecnologias Emergentes II</h1>

       
    
        <h3>
            <c:if test="${objeto.id == 0}">Inserte un Nuevo </c:if>
            <c:if test="${objeto.id > 0}">Editar un </c:if>
            Usuario    
        </h3>
        <form action="UsuarioControlador" method="post">
            <input type="hidden" name="id" value="${objeto.id}">
            <table width="311">       
                <tr>
                    <td>Usuario</td>
                    <td ><input name="usuario" type="text" value="${objeto.usuario}" required></td>                   
                </tr>
                
                <tr>
                    <td>Correo</td>
                    <td ><input name="correo" type="text" value="${objeto.correo}" required></td>                   
                </tr>                

                <tr>
                    <td>Password</td>

                    <td ><input name="clave" type="password" value="${objeto.clave}" required></td>  
 
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="enviar"></td>
                </tr>

            </table>
        </form>
                            <br>
            <a href="UsuarioControlador">Volver..</a>
        </div>
    </body>
</html>