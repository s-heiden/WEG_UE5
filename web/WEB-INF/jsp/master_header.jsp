<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>WEGReisen</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
    <link href="<c:url value="/resources/app.css" />" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <h1 id="page-top" class="page-scroll">WEGReisen</h1>
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#hidable-navbar" aria-expanded="false">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="hidable-navbar">

            <ul class="list-inline text-left">
                <li><a class="page-scroll" href="/UE5_WEGReisen/hello/allhotels.htm">Hotels</a></li>
                <li><a class="page-scroll" href="/UE5_WEGReisen/hello/searchhotel.htm">Hotelsuche</a></li>
                <li><a class="page-scroll" href="/UE5_WEGReisen/hello/flights.htm">Flüge</a></li>
                <li><a class="page-scroll" href="/UE5_WEGReisen/hello/packageholidays.htm">Pauschalreisen</a></li>
                <li><a class="page-scroll" href="/UE5_WEGReisen/hello/travelpreparations.htm">Reisevorbereitung</a></li>
                <li><a class="page-scroll" href="/UE5_WEGReisen/hello/popularroutes.htm">Beliebte Routen</a></li>
            </ul>

        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-9">
            <main>