<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
                integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
        <link href="<c:url value="/resources/app.css" />" rel="stylesheet">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-6 col-xs-offset-3">
                    <h3>Search Hotel</h3>        

                    <form action="searchhotel.htm" method="POST">
                        <fieldset>
                            <legend>Ihre Suchanfrage</legend>
                        <div class="form-group">
                            <label for="name">Name des Hotels:</label>
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
                </div>
            </div>
        </div>
    </body>
</html>
