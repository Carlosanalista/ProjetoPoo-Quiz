<%-- 
    Document   : home.jsp
    Created on : 08/11/2018, 08:57:08
    Author     : Carlos
--%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page import="br.com.fatecpg.quiz.Teste"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - WebQuiz</title>
        <% 
            String usuario = ((String)session.getAttribute("USUARIO")==null) ? "" : (String)session.getAttribute("USUARIO");
            if(request.getParameter("login") != null) {
                session.setAttribute("USUARIO", request.getParameter("usuario"));
                usuario = (String) session.getAttribute("USUARIO");
                Usuario usr = new Usuario(request.getParameter("usuario"));
                Db.usuario().add(usr);
            }else{
                if(session.getAttribute("USUARIO") == null){
                    session.setAttribute("USUARIO", "");
                    usuario = (String) session.getAttribute("USUARIO");
                }
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
        
        <% if((String)session.getAttribute("USUARIO") != null){ %>
            <h3><a href="test.jsp"><button>Realizar Teste!</button></a></h3>
            <h3><a href="sair.jsp"><button>sair</button></a></h3>
        <% } %>
        
        <table>
            <thead>
                <tr>
                    <td colspan="2">Ranking dos 10 melhores testes</td>
                </tr>
                <tr>
                    <td>Usuario</td>
                    <td>Nota</td>
                </tr>
            </thead>
            <tbody>
                <%  int cont = (Db.notasMax().size() >= 10) ? 10 : Db.notasMax().size();  
                    for(int i = 0; i < cont; i++){%>
                    <%for(Teste tst: Db.notasMax()){ %>
                        <tr>
                            <td><%= tst.getUsuario() %></td>
                            <td><%= tst.getNota() %></td>
                        </tr>
                    <% } %>
                <% } %>
            </tbody>
        </table>
        <hr/>
        <table>
            <thead>
                <tr>
                    <td colspan="2">Lista de testes efetuados</td>
                </tr>
                <tr>
                    <td>Usuario</td>
                    <td>Nota</td>
                </tr>
            </thead>
            <tbody>
                <%for(Teste tst: Db.teste()){ %>
                    <tr>
                        <td><%= tst.getUsuario() %></td>
                        <td><%= tst.getNota() %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>
