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
            tr:first-child{
                font-weight: bold;
                background-color: #C6C9C4;
            }

            #btn-danger {
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                cursor: pointer;
                float: right;
            }

        </style>

    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="<c:url value='/' />">Artmin</a>

        <h1 class="text-white">EVENTS</h1>

        <a href="<c:url value='/events/new-${hotartist.id}'/>"> <button class="btn btn-secondary my-2 my-sm-0">New</button></a>       
    </nav>

    <div class="bg-dark">
        <div class="row justify-content-center">
            <h6 class="text-white">DEMO USER NAAM //  ${hotartist.name}</h6>
        </div>
    </div>

    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<c:url value='/'/>">Home</a></li>
        <li class="breadcrumb-item"><a href="<c:url value='/artists'/>">Artists</a></li>
        <li class="breadcrumb-item active">Events</li>
    </ol>
</head>

<body>    
    <div class="container">
        <div class="row">
            <div class="col-">
            </div>

            <div class="col-lg">
                <c:forEach items="${events}" var="event">

                    <!--Weergave van één event  -->
                    <!--Weergave van één event  -->
                    <!--Weergave van één event  -->


                    <div class="card bg-light mb-3">
                        <A href="<c:url value='/artist'/>">
                            <div class="card-header">
                                <h1><c:out value="${event.name}"/></h1>                         
                                <h6><c:out value="${event.eventType.name}"/></h6>  
                            </div>

                            <div class="card-body">
                                <h5><fmt:formatDate value="${event.dateCalendar}" type="date" pattern="dd-MMM-yyyy"/>
                                    //
                                    <fmt:formatDate value="${event.dateActStart}" type="date" pattern="HH:mm"/>
                                    - 
                                    <fmt:formatDate value="${event.dateActEnd}" type="date" pattern="HH:mm"/></h5>

                                <span class="badge badge-pill ${event.statusColor}">${event.statusText}</span>

                            </div>
                        </A>

                        <div class="container">
                            <div class="row">
                                <div class="col-sm">
                                    <a href="<c:url value='/events/delete-${event.id}-event-${hotartist.id}'/>"><button type="button" class="btn btn-danger">DELETE</button> </a></td>

                                </div>
                                <div class="col-sm">
                                    <a href="<c:url value='/events/delete-${event.id}-event-${hotartist.id}'/>"><button type="button" class="btn btn-warning">EDIT</button></a></td>

                                </div>                          
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <div class="col-">              
    </div>
</div>
</div>

</body>

</body>
</html>
