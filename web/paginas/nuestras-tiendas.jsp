<%@page import="Model.dao.ListarTiendas"%><%@page import="java.util.LinkedList"%><%@page import="Dao.P_tiendas"%><%@page contentType="text/html" pageEncoding="UTF-8"%>
<style type="text/css">
    h2 { text-align:center;}  h2 a { text-decoration:none;}  
    .titulo {background:#FF3300;}  
    .bce-img
    { border-radius:5px; margin: 10px 10px; width:190px;    height:100px;   }
</style>
<table width="100%" >
    <tr><td>PUNTO DE VENTA</td><td>DIRECCIÓN</td></tr>       
    <%
        LinkedList<P_tiendas> lista = ListarTiendas.getTiendas();
        for (int i = 0; i < lista.size(); i++) {
            P_tiendas tiendas = lista.get(i);
            String img;
            if (tiendas.getImg1() != null) {
                img = tiendas.getImg1();
            } else {
                img = "http://img2.wikia.nocookie.net/__cb20130413235425/fairytail/es/images/6/68/Imagen_no_disponible.jpg";
            }
    %>
    <tr><td>
            <a href="<%=img%>" rel="prettyPhoto" title="<%=tiendas.getNombre()%>">
                <span class="overlay zoom"></span><img alt="<%=tiendas.getNombre()%>" src="<%=img%>"  class="bce-img"/></a>
        </td>
        <td ><h3><%=tiendas.getNombre()%> </h3>
            <strong>DIRECCIÓN</strong> <%=tiendas.getDireccion()%> <br clear='all'>
            <strong>CORREO</strong> <%=tiendas.getCorreo()%><br clear='all'>
            <% if (session.getAttribute("NomAnexo") != null && session.getAttribute("CodAnexo") != null) {%>
            <strong>TELEFONO:</strong> <%=tiendas.getTelefono()%><br clear='all'><strong>RPM:</strong> <%=tiendas.getRpm()%> <br clear='all'>
            <a href="<%=tiendas.getMapa()%>" target="_blank">Ver mapa</a><br clear='all'><br clear='all'>
            <%} else {%>
            <br><p style="color:#F8E0E0;font-style: italic">Para ver todo inicie sesion por favor...</p><%}%><td ></td></tr>
            <%}%>                          
</table>

