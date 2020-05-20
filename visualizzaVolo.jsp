<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, entita.Volo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="css/general.css" type="text/css" media="all">
<link rel="stylesheet" href="css/nav.css" type="text/css" media="all">
<link rel="stylesheet" href="css/login.css" type="text/css" media="all">
<link rel="stylesheet" href="css/visualizzaVolo.css" type="text/css" media="all">

<title>Voli</title>
</head>
<body>

 <%@ include file="header.jsp"%>
 
 <%-- <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
        <th><span>Codice ID</span></th>
        <th><span>Luogo Partenza</span></th>
        <th><span>Data Partenza</span></th>
        <th><span>Ora Partenza</span></th>
        <th><span>Luogo Arrivo</span></th>
        <th><span>Data Arrivo</span></th>
        <th><span>Ora Arrivo</span></th>
        <th><span>Costo</span></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="lalign"> <%=v.getCodice_id()%></td>
        <td><%=v.getLuogo_partenza()%></td>
        <td><%=v.getData_partenza() %></td>
        <td><%=v.getOra_partenza()%></td>
        <td><%=v.getLuogo_arrivo()%></td>
        <td><%=v.getData_arrivo()%></td>
        <td><%=v.getOra_arrivo() %></td>
        <td><%=v.getCosto() %></td>
      </tr>
   
   
     
    </tbody>
  </table> --%>
  
  <!-- confronto se la variabile erroreVolo è true se lo è significa che ci sono voli da visualizzare -->
 <% String variabile= (String) session.getAttribute("erroreVolo");
   if(variabile == "true"){ %>
   <h4 class="Titol"> Cliccando sul titolo delle colonne si può ordinare in modo crescente/decrescente</h4>
 
   <% String username= (String) session.getAttribute("name");
   if(username != null ){
    %>
    
 <% ArrayList<Volo> voloAndata = (ArrayList<Volo>) session.getAttribute("voloAndata"); %>
      <div class="scr">
    <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
        <th><span>Codice ID</span></th>
        <th><span>Luogo Partenza</span></th>
        <th><span>Data Partenza</span></th>
        <th><span>Ora Partenza</span></th>
        <th><span>Luogo Arrivo</span></th>
        <th><span>Data Arrivo</span></th>
        <th><span>Ora Arrivo</span></th>
        <th><span>Costo</span></th>
      </tr>
    </thead>
    <tbody>
    
       <% for(Volo v : voloAndata){ %>
     
    <%-- <b> Codice Identificativo del volo: <%=v.getCodice_id()%></b>
 <b> Luogo Partenza: <%=v.getLuogo_partenza()%> ,</b>
 <b> Data Partenza:<%=v.getData_partenza() %>, </b>
 <b> Ora Partenza:<%=v.getOra_partenza()%>, </b>
 <b> Luogo Arrivo: <%=v.getLuogo_arrivo()%>, </b>
 <b> Data Arrivo:<%=v.getData_arrivo()%>, </b>
 <b> Ora Arrivo: <%=v.getOra_arrivo() %> . </b>
 <b> Costo: <%=v.getCosto() %> .  </b> --%>
 
 
 <form action="InsertCarrello" method="post">
  <input type="hidden" name="codiceVolo" value="<%=v.getCodice_id()%>" />
  
  <tr>
        <td class="lalign"> <%=v.getCodice_id()%></td>
        <td><%=v.getLuogo_partenza()%></td>
        <td><%=v.getData_partenza() %></td>
        <td><%=v.getOra_partenza()%></td>
        <td><%=v.getLuogo_arrivo()%></td>
        <td><%=v.getData_arrivo()%></td>
        <td><%=v.getOra_arrivo() %></td>
        <td><%=v.getCosto() %></td>
        <td class="in_b"><input type="submit" value="Seleziona" class="button_cerca" ></td>
      </tr>
 
 
  
 </form>
 
 
 <%  } %>
 </tbody>
  </table>
  </div>
<%  }else{ %>


 <% ArrayList<Volo> voloAndata = (ArrayList<Volo>) session.getAttribute("voloAndata"); %>
 
 <div class="scr">
<table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
        <th><span>Codice ID</span></th>
        <th><span>Luogo Partenza</span></th>
        <th><span>Data Partenza</span></th>
        <th><span>Ora Partenza</span></th>
        <th><span>Luogo Arrivo</span></th>
        <th><sp
 an>Data Arrivo</span></th>
        <th><span>Ora Arrivo</span></th>
        <th><span>Costo</span></th>
      </tr>
    </thead>
    <tbody>
    
        <% for(Volo v : voloAndata){  %>
<%--       <b> Codice Identificativo del volo: <%=v.getCodice_id()%></b>
 <b> Luogo Partenza: <%=v.getLuogo_partenza()%> ,</b>
 <b> Data Partenza:<%=v.getData_partenza() %>, </b>
 <b> Ora Partenza:<%=v.getOra_partenza()%>, </b>
 <b> Luogo Arrivo: <%=v.getLuogo_arrivo()%>, </b>
 <b> Data Arrivo:<%=v.getData_arrivo()%>, </b>
 <b> Ora Arrivo <%=v.getOra_arrivo() %> . </b>
  <b> Costo: <%=v.getCosto() %> .  </b> --%>
  
  
  <tr>
        <td class="lalign"> <%=v.getCodice_id()%></td>
        <td><%=v.getLuogo_partenza()%></td>
        <td><%=v.getData_partenza() %></td>
        <td><%=v.getOra_partenza()%></td>
        <td><%=v.getLuogo_arrivo()%></td>
        <td><%=v.getData_arrivo()%></td>
        <td><%=v.getOra_arrivo() %></td>
        <td><%=v.getCosto() %></td>
      </tr>
  
<% } %>
     <%  } %>
   </tbody>
  </table>
   </div>
  
  <% String username1= (String) session.getAttribute("name");
   if(username1 != null ){
    %>
    
 <% ArrayList<Volo> voloRitorno = (ArrayList<Volo>) session.getAttribute("voloRitorno"); %>
 
 <div class="scr">
    <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
        <th><span>Codice ID</span></th>
        <th><span>Luogo Partenza</span></th>
        <th><span>Data Partenza</span></th>
        <th><span>Ora Partenza</span></th>
        <th><span>Luogo Arrivo</span></th>
        <th><span>Data Arrivo</span></th>
        <th><span>Ora Arrivo</span></th>
        <th><span>Costo</span></th>
      </tr>
    </thead>
    <tbody>
    
        <% for(Volo v : voloRitorno){%>
        
  <%--  <b> Codice Identificativo del volo: <%=v.getCodice_id()%></b>
 <b> Luogo Partenza: <%=v.getLuogo_partenza()%> ,</b>
 <b> Data Partenza:<%=v.getData_partenza() %>, </b>
 <b> Ora Partenza:<%=v.getOra_partenza()%>, </b>
 <b> Luogo Arrivo: <%=v.getLuogo_arrivo()%>, </b>
 <b> Data Arrivo:<%=v.getData_arrivo()%>, </b>
 <b> Ora Arrivo <%=v.getOra_arrivo() %> . </b>
  <b> Costo: <%=v.getCosto() %> .  </b> --%>
  
 <form action="InsertCarrello" method="post">
  <input type="hidden" name="codiceVolo" value="<%=v.getCodice_id()%>" />
  
  <tr>
        <td class="lalign"> <%=v.getCodice_id()%></td>
        <td><%=v.getLuogo_partenza()%></td>
        <td><%=v.getData_partenza() %></td>
        <td><%=v.getOra_partenza()%></td>
        <td><%=v.getLuogo_arrivo()%></td>
        <td><%=v.getData_arrivo()%></td>
        <td><%=v.getOra_arrivo() %></td>
        <td><%=v.getCosto() %></td>
        <td class="in_b"><input type="submit" value="Seleziona" class="button_cerca" ></td>
      </tr>
 
 
  
 </form>
 
 
 <%  } %>
 
<%  } else{ %>
</tbody>
  </table>
   </div>


    
 <% ArrayList<Volo> voloRitorno = (ArrayList<Volo>) session.getAttribute("voloRitorno"); %>
 
 
 <div class="scr">
<table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
        <th class="tooltip"><span>Codice ID</span></th>
        <th><span>Luogo Partenza</span></th>
        <th><span>Data Partenza</span></th>
        <th><span>Ora Partenza</span></th>
        <th><span>Luogo Arrivo</span></th>
        <th><span>Data Arrivo</span></th>
        <th><span>Ora Arrivo</span></th>
        <th><span>Costo</span></th>
      </tr>
    </thead>
    <tbody>
    
    
       <% for(Volo v : voloRitorno){ %>
  
      <%-- <b> Codice Identificativo del volo: <%=v.getCodice_id()%></b>
 <b> Luogo Partenza: <%=v.getLuogo_partenza()%> ,</b>
 <b> Data Partenza:<%=v.getData_partenza() %>, </b>
 <b> Ora Partenza:<%=v.getOra_partenza()%>, </b>
 <b> Luogo Arrivo: <%=v.getLuogo_arrivo()%>, </b>
 <b> Data Arrivo:<%=v.getData_arrivo()%>, </b>
 <b> Ora Arrivo <%=v.getOra_arrivo() %> . </b>
  <b> Costo: <%=v.getCosto() %> .  </b> --%>

<tr>
        <td class="lalign"> <%=v.getCodice_id()%></td>
        <td><%=v.getLuogo_partenza()%></td>
        <td><%=v.getData_partenza() %></td>
        <td><%=v.getOra_partenza()%></td>
        <td><%=v.getLuogo_arrivo()%></td>
        <td><%=v.getData_arrivo()%></td>
        <td><%=v.getOra_arrivo() %></td>
        <td><%=v.getCosto() %></td>
      </tr>
      
      
<% } %>
     <%  } %>
      
       </tbody>
  </table>
   </div>
      <%}else{ %> 
  <div id="riprova">
   <h1>Voli non disponibili</h1>
   <h1> Ritorno alla pagina iniziale cliccando <a href="index.jsp"> qui</a></h1>
   </div>
<%  } %>


<!-- se la variabile è diversa da true significa che nn ci sono voli -->

<%@ include file="footer.jsp"%>
</body>


<script src="//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.28.14/js/jquery.tablesorter.min.js"></script>

<script type="text/javascript">

$(function(){
   $('#keywords').tablesorter(); 
 });

</script>
</html>