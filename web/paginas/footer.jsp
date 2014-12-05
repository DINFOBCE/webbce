<%@page import="Model.dao.ListarMenu"%>
<%@page import="Dao.P_Menu"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

</article>
</div>
</div>
 </div>
 </div>
    </div>


<footer class="bce-footer clearfix">
  <div class="bce-footer-inner">
<div class="bce-content-layout">
    <div class="bce-content-layout-row">
   <div class="bce-layout-cell layout-item-0" style="width: 20%">
  <p style="font-size: 17px; color: #FFB0A3;">Páginas</p>
        <br>
        <ul>
<%
    LinkedList<P_Menu> lista = ListarMenu.getMenu();
for (int i=0;i<lista.size(); i++){
 P_Menu menu = lista.get(i);%>
   <li><a href="?content=<%=menu.getUrl()%>"><%=menu.getTitulo()%></a>
    <%
    LinkedList<P_Menu> lista_sub = ListarMenu.getMenu_submenu(menu.getIdmenu());
    if(lista_sub.size()>0){
        out.println(" <ul> ");
      for (int x=0;x<lista_sub.size(); x++){
 P_Menu menu_sub = lista_sub.get(x);
 %> 
  <li><a href="?content=<%=menu_sub.getUrl()%>"><%=menu_sub.getTitulo()%></a></li>
  <%}
  out.println(" </ul> ");
  }
 out.println(" </li> ");
}%>
  
        </ul>
    </div>
         <div class="bce-layout-cell layout-item-0" style="width: 20%">
        <p style="font-size: 17px; color: #FFB0A3;">Sociales</p>
        <br>
        <ul><li>
<a href = "https://www.facebook.com/pages/Bazar-Central-del-Ej%C3%A9rcito-Oficial/1437488386503042" target="_blank" title="Síguenos en Facebook" ><img width="40" height="40" alt="" src="images/facebook1.png" class=""></a>
            </li></ul>
    </div>
        <div class="bce-layout-cell layout-item-0" style="width: 40%">
            <p style="text-align:right;font-size: 20px">      <b>Visitante Nro: </b> 00015       </p>

            <script type="text/javascript" src="js/scripts.js"></script>
    </div>
    </div>
</div>
<div class="bce-content-layout">
    <div class="bce-content-layout-row">
    <div class="bce-layout-cell" align="right">
        <p style="text-align:right">
            <a href="images/workteam.JPG" rel="prettyPhoto" title="">
        <span class="overlay zoom"></span>Desarrollado Por DINFO - Bazar Central Del Ejercito del Perú</a> 
       </p>
    </div>
    </div>
</div>

  </div>
</footer>

</div>

</body></html>
