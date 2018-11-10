<%-- 
    Document   : home.jsp
    Created on : 08/11/2018, 08:57:08
    Author     : Carlos
--%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - WebQuiz</title>
        <% 
            String usuario;
            if(request.getParameter("login") != null) {
                session.setAttribute("USUARIO", request.getParameter("usuario"));
                usuario = (String) session.getAttribute("USUARIO");
                Usuario usr = new Usuario(request.getParameter("usuario"));
                Db.usuario().add(usr);
            }else{
                session.setAttribute("USUARIO", "");
                usuario = (String) session.getAttribute("USUARIO");
            }
        %>
    </head>
    <body>
        <h1>WebQuiz</h1>
        <h2>Home</h2>
        <div>
            <p>Faça o login ou cadastro para participar do quiz</p>
            <form>
                <label for="usuario">Usuario</label>
                <input name="usuario" type="text" placeholder="Informe o usuario para login" />

                <button type="submit" name="login" value="login">Logar</button>
            </form>
        </div>
        Bem Vindo <%= usuario %>. <br/> Ao WebQuiz!
        <h3><a href="test.jsp"><button>Realizar Teste!</button></a></h3>
    </body>
</html>
