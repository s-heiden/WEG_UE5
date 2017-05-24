<%@include file="master_header.jsp" %>

<c:forEach var="feed" items="${feedList}">
    <h3>Feed: ${feed.description}</h3>
    <br/>
    <h2>messages</h2>
    <ul>
        <c:forEach var="message" items="${feed.getEntries()}">
            <li>${message.title}</li>
            </c:forEach>
    </ul>
</c:forEach>  

<%@include file="master_footer.jsp" %>