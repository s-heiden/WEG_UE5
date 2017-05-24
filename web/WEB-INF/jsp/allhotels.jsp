<%@include file="master_header.jsp" %>
<h3>Alle Hotels</h3>
<table class="table">        
    <tr>
        <th>Nr.</th>
        <th>Hotel Name</th>
        <th>Ort</th>
        <th>Land</th>
        <th>Bewertung</th>
    </tr>         

    <c:forEach items="${hotels}" var="hotel" varStatus="status">    
        <tr>
            <td>${status.count}</td>
            <td>${hotel.getName()}</td>
            <td>${hotel.getCity()}</td>
            <td>${hotel.getCountry()}</td>
            <td>${hotel.getRating()}</td>
        </tr>
    </c:forEach>
</table>
<%@include file="master_footer.jsp" %>
