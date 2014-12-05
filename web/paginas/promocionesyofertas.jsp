<%@page import="Model.dao.ListarPromociones"%>
<%@page import="Dao.P_Promociones"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="bce-postcontent bce-postcontent-0 clearfix">
    <blockquote>PROMOCIONES Y OFERETAS</blockquote>
    <%
        LinkedList<P_Promociones> lista_p = ListarPromociones.getPromoOfer();
        for (int a = 0; a < lista_p.size(); a++) {
            P_Promociones PO = lista_p.get(a);
            if (a % 2 == 0) {
    %>
    <div class="bce-content-layout-row">
        <div class="bce-layout-cell layout-item-old-2" style="width: 50%">
             <h3><a name="promooferta<%=PO.getIdpromo_oferta()%>"><%=PO.getTitulo()%></a></h3>
               <h4><%=PO.getNombre()%></h4>
            <p><%=PO.getDescripcion()%></p>
            <p> <b><%=PO.getValido()%></b> </p>
             <img src="<%=PO.getImg()%>" width="100" height="100" />
            <a href="<%=PO.getUrl()%>" target="_blank">Ver mas...</a>
        </div>
        <% } else {%>
        <div class="bce-layout-cell layout-item-old-2" style="width: 50%">
             <h3><a name="promooferta<%=PO.getIdpromo_oferta()%>"><%=PO.getTitulo()%></a></h3>
               <h4><%=PO.getNombre()%></h4>
            <p><%=PO.getDescripcion()%></p>
            <p> <b><%=PO.getValido()%></b> </p>
            <img src="<%=PO.getImg()%>" width="100" height="100" />
            <a href="<%=PO.getUrl()%>" target="_blank">Ver mas...</a>
        </div>    
    </div>  
    <%}%>
    <%}%>
</div> 
<BR/>
<h2>OFERTAS Y PROMOCIÓNES</h2>
    <div class="carousel">
        <div id="carousel-scroll"><a href="#" id="prev" title="Anterio">Prev</a><a href="#" id="next" title="Siguiente">Sig</a></div>
      <ul>
    <%
        LinkedList<P_Promociones> lista = ListarPromociones.getPromoOfer();
        for (int a = 0; a < lista.size(); a++) {
            P_Promociones P = lista.get(a);
            
    %>
<li><a href="<%=P.getImg()%>" rel="prettyPhoto" title="<%=P.getTitulo()%>"><span class="overlay zoom"></span><img src="<%=P.getImg()%>" alt="" /></a></li>
 <%}%>
 </ul>
    </div>
 
