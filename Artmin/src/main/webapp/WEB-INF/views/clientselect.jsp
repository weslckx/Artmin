<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

    <head>
        <title>Locations</title>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="<c:url value="/resources/bootstrap.css" />" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <style>
            .glyphicon {
                font-size: 30px;
            }

            /* Grootte van de icons*/
            .material-icons {
                font-size: 30px
            }

            .small {
                font-size: 15px
            }

            .item{
                height: 150px;  
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
                    <h1 align="center"  class="text-white">SELECT CLIENT</h1>
                </div>

                <div class="col align-self-center">
                    <div class="text-right">
                        <a href="<c:url value='/clients/new-${event.id}'/>">
                            <button class="btn btn-secondary align-content-center">New</button>
                        </a>  
                    </div>
                </div>
            </div>

            <div class="row">   
                <div class="col">
                    <h6 align="center" class="text-white">${event.name}</h6>
                </div>
            </div>
        </div>
    </nav>

    <button type="button" class="btn btn-info btn-lg btn-block" onclick="location.href = '<c:url value='/events/detail-${event.id}'/>';">
        <div class="container-fluid">
            <div class="row">  
                <div class="col align-self-center">
                    <div class="text-right">
                        <i class="material-icons">clear_all</i>
                    </div>
                </div>

                <div class="col align-self-center text-left">
                    ${event.name}
                </div>
            </div>
        </div>
    </button>
</head>

<body>  
    <c:forEach items="${clients}" var="client">
        <div class="container-fluid">
            <div class="row">        

                <div class="col">

                    <!--Weergave van één item  -->
                    <!--Weergave van één item  -->
                    <!--Weergave van één item  -->
                    <div class="modal-content shadow">

                        <div onclick="location.href = '<c:url value='/clients/addToEvent-${event.id}-${client.id}'/>';" style="cursor: pointer;">

                            <div class="text-center">
                                <h1 align="center"><c:out value="${client.name}"/></h1>   
                                <h6 align="center"><c:out value="${client.city}"/></h6>  
                            </div> 
                        </div>

                        <div class="modal-footer">
                            <button onclick="window.location.href = '<c:url value='/clients/edit-${client.id}-${event.id}'/>';" type="button" class="btn btn-warning">
                                <i class="material-icons small">edit</i>
                            </button> 

                            <button onclick="window.location.href = '<c:url value='/clients/delete-${client.id}-${event.id}'/>';" type="button" class="btn btn-danger">
                                <i class="material-icons small">clear</i>
                            </button>   
                        </div>
                    </div>
                    <hr>
                </div>     
            </div>
        </div>
    </c:forEach>
</body>
</html>
