<%@include file="master_header.jsp" %>
<h3>Search Hotel</h3>        

<form action="searchhotel.htm" method="POST">
    <fieldset>
        <legend>Ihre Suchanfrage</legend>
        <div class="form-group">
            <label for="name">Geben Sie hier den Suchbegriff ein:</label>
            <input type="text" class="form-control" name="name">
        </div>
        <input type="submit" class="btn btn-default" value="Submit">
    </fieldset>
</form>

<hr class='divider'>

<c:if test="${hotels != null}">
    <h4>Gefundene Hotels zur Suchanfrage '<em>${name}</em>'</h4>
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

    <c:if test = "${hotels == null}">
        <pre>Warning: $(hotels) is NULL</pre>
    </c:if>

</c:if>
<%@include file="master_footer.jsp" %>