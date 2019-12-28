<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- Dependancies voor data format -->
<html>

    <head>
        <title>Events</title>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link href="<c:url value="/resources/bootstrap.css" />" rel="stylesheet">



        <style>
            .glyphicon {
                font-size: 30px;
            }

        </style>

    <nav class="navbar navbar-dark bg-dark d-block">
        <div class="container d-block">
            <div class="row">
                <div class="col align-self-center">
                    <div class="text-left">
                        <a class="navbar-brand" href="<c:url value='/' />"><h3>Artmin</a> 
                    </div>
                </div>      

                <div class="col d-block">
                    <h1 align="center"  class="text-white">EVENTS</h1>
                </div>

                <div class="col align-self-center">
                    <div class="text-right">
                        <a href="<c:url value='/events/new-${hotartist.id}'/>">
                            <button class="btn btn-secondary align-content-center">New</button>
                        </a>  
                    </div>
                </div>
            </div>
            <div class="row">   
                <div class="col">
                    <h6 align="center" class="text-white">DEMO USER NAAM //  ${hotartist.name}</h6>
                </div>
            </div>
        </div>
    </nav>


    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<c:url value='/'/>">Home</a></li>
        <li class="breadcrumb-item"><a href="<c:url value='/artists'/>">Artists</a></li>
        <li class="breadcrumb-item active">Events</li>
    </ol>
</head>

<body>   
    <div class="container-fluid">
        <div class="row ">  
            <div class="col-sm d-none d-xl-block">

            </div>

            <div class="col">
                <c:forEach items="${events}" var="event">

                    <!--Weergave van één event  -->
                    <!--Weergave van één event  -->
                    <!--Weergave van één event  -->
                    <div class="modal-content shadow">

                        <div onclick="location.href = '<c:url value='/events/detail-${event.id}-${hotartist.id}'/>';" style="cursor: pointer;">

                            <div>

                                <div class="text-center">
                                    <h1 ><c:out value="${event.name}"/></h1>   
                                    <h6 ><c:out value="${event.eventType.name}"/></h6>  
                                    <div><h1><span class="badge badge-pill ${event.statusColor}">${event.statusText}</span></h1></div>                                
                                </div> 
                            </div>

                                <hr>
                                
                            <div class="modal-body">
                                <h5><fmt:formatDate value="${event.dateCalendar}" type="date" pattern="dd-MMM-yyyy"/>
                                    //
                                    <fmt:formatDate value="${event.dateActStart}" type="date" pattern="HH:mm"/>
                                    - 
                                    <fmt:formatDate value="${event.dateActEnd}" type="date" pattern="HH:mm"/></h5>
                            </div>

                        </div>

                        <div class="modal-footer">
                            <button onclick="window.location.href = '<c:url value='/events/delete-${event.id}-event-${hotartist.id}'/>';" type="button" class="close mr-auto" data-dismiss="modal">
                                <button type="button" class="btn btn-danger">Delete</button>         
                            </button>

                            <button onclick="window.location.href = '<c:url value='/events/delete-${event.id}-event-${hotartist.id}'/>';" type="button" class="close" data-dismiss="modal">
                                <button type="button" class="btn btn-warning">Edit</button>
                            </button>  
                        </div>
                    </div>

                    <hr>

                </c:forEach>
            </div>

            <div class="col d-none d-xl-block">

            </div>
        </div>
    </div>

</div>
</div>

</body>

</body>
</html>
