<%-- 
    Document   : listarprodutos
    Created on : 22/05/2020, 14:57:44
    Author     : hugom
--%>

<%@page import="java.util.List"%>
<%@page import="DAO.DAOProdutos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Produtos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>
        <%
        List<Produtos> lista = new ArrayList<Produtos>();
        DAOProdutos objDAO = new DAOProdutos();
        lista = objDAO.listarProduto();
      for (int i=0; i<lista.size(); i++)
      {
       out.print("<form name='"+lista.get(i).getId_produto()+"'");
       out.print(" action='addproduto.jsp' method='POST'>");
       out.print("ID:");
       out.print(lista.get(i).getId_produto());
       out.print(" Descrição:");
       out.print(lista.get(i).getDescricao());
       out.print(" Preço:");
       out.print(lista.get(i).getPreco());
       out.print(" Estoque:");
       out.print(lista.get(i).getEstoque());
       out.print("input type='submit' value='Comprar'");
       out.print("</form>");
       out.print("<br>");
      }
                
        %>
        </p>
    </body>
</html>
