<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- Dependancies voor data format -->
<html>

    <head>
        <title>Events</title>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link href="<c:url value="/resources/bootstrap.css" />" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <style>
            .glyphicon {
                font-size: 30px;
            }

            /* Grootte van de icons*/
            .material-icons {
                font-size: 125px
            }

            .item{
                height: 150;  
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
                    <h1 align="center"  class="text-white">${event.name}</h1>
                </div>

                <div class="col align-self-center">

                </div>
            </div>

            <div class="row">   
                <div class="col">
                    <h6 align="center" class="text-white">${event.eventType.name}</h6>
                </div>
            </div>
        </div>
    </nav>

    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<c:url value='/'/>">Home</a></li>
        <li class="breadcrumb-item"><a href="<c:url value='/artists'/>">Artists</a></li>
        <li class="breadcrumb-item"><a href="<c:url value='/events/opn-events-${hotartist.id}'/>">Events</a></li>
        <li class="breadcrumb-item active">${event.eventType.name}: ${event.name}</li>
    </ol>
</head>


<body>

    <!-- NOTES -->
    <!-- NOTES -->
    <!-- NOTES -->
    <div class="container-fluid modal-content" >
        <div class="row shadow item">

            <div class="col col-sm-3 align-self-center">

                <!-- ICON COLUMN -->
                <!-- ICON COLUMN -->
                <!-- ICON COLUMN -->                 
                <div class="text-center">
                    <i class="material-icons">assignment</i>
                </div>   

            </div>

            <div class="col col-sm">

                <!-- DETAIL MIDDLE COLUMN -->
                <!-- DETAIL MIDDLE COLUMN -->
                <!-- DETAIL MIDDLE COLUMN -->
                <div class="container">
                    <div class="row">
                        <div class="col-sm">
                            <h1>NOTES</h1>
                            <hr>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm">
                            <span class="badge badge-pill badge-warning"><h3>${event.aantalNotes}</h3></span> 

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm">

                        </div>
                    </div>
                </div>

            </div>

            <div class="col col-sm-3 align-self-center">                  

            </div>
        </div>
    </div>

    <hr>

    <!-- Location -->
    <!-- Location -->
    <!-- Location -->
    <div class="container-fluid modal-content" >
        <div class="row shadow item">

            <div class="col col-sm-3 align-self-center">

                <!-- ICON COLUMN -->
                <!-- ICON COLUMN -->
                <!-- ICON COLUMN -->                 
                <div class="text-center">
                    <i class="material-icons">location_on</i>
                </div>  
            </div>

            <div class="col col-sm">

                <!-- DETAIL MIDDLE COLUMN -->
                <!-- DETAIL MIDDLE COLUMN -->
                <!-- DETAIL MIDDLE COLUMN -->
                <div class="container">
                    <div class="row">
                        <div class="col-sm">
                            <h1>LOCATION</h1>
                            <hr>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm">    
                        <h3>${event.locations.name}</h3>    
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm">                
                       
                        </div>
                    </div>
                </div>

            </div>

            <div class="col col-sm-3 align-self-center">

                <!-- CHECK COLUMN -->
                <!-- CHECK COLUMN -->
                <!-- CHECK COLUMN -->                 
                <div class="text-center">
                    <c:choose>
                        <c:when test="${event.locationAck}">
                            <i class="material-icons">check</i>

                        </c:when>
                        <c:otherwise>
                            <i class="material-icons">clear</i>
                        </c:otherwise>
                    </c:choose> 
                </div>  
            </div>  

        </div>
    </div>
</div>

<hr>


<!-- TODO -->
<!-- TODO -->
<!-- TODO -->
<div class="container-fluid modal-content" >
    <div class="row shadow item">

        <div class="col col-sm-3 align-self-center">

            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->                 
            <div class="text-center">
                <i class="material-icons">event_available</i>
            </div>   

        </div>

        <div class="col col-sm">

            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <div class="container">
                <div class="row">
                    <div class="col-sm">
                        <h1>TODO</h1>
                        <hr>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">
                        <span class="badge badge-pill badge-warning"><h3>${event.aantalTodoAck}/${event.aantalTodo} complete</h3></span>


                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">

                    </div>
                </div>
            </div>

        </div>

        <div class="col col-sm-3 align-self-center">

            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->                 
            <div class="text-center">
                <c:choose>
                    <c:when test="${event.todoAck}">
                        <i class="material-icons">check</i>

                    </c:when>
                    <c:otherwise>
                        <i class="material-icons">clear</i>
                    </c:otherwise>
                </c:choose> 
            </div>  

        </div>
    </div>
</div>

<hr>

<!-- DATE -->
<!-- DATE -->
<!-- DATE -->

<div class="container-fluid modal-content" >
    <div class="row shadow item">

        <div class="col col-sm-3 align-self-center">

            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->                 
            <div class="text-center">
                <i class="material-icons">event</i>
            </div>  

        </div>

        <div class="col col-sm">

            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <div class="container">
                <div class="row">
                    <div class="col-sm">
                        <h1>DATE</h1>
                        <hr>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">

                        <h3><fmt:formatDate value="${event.dateCalendar}" type="date" pattern="dd-MMM-yyyy"/></h3>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">

                        <fmt:formatDate value="${event.dateActStart}" type="date" pattern="HH:mm"/>
                        - 
                        <fmt:formatDate value="${event.dateActEnd}" type="date" pattern="HH:mm"/>
                    </div>
                </div>
            </div>

        </div>

        <div class="col col-sm-3 align-self-center">

            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->                 
            <div class="text-center">
                <c:choose>
                    <c:when test="${event.dateAck}">
                        <i class="material-icons">check</i>

                    </c:when>
                    <c:otherwise>
                        <i class="material-icons">clear</i>
                    </c:otherwise>
                </c:choose> 
            </div>  

        </div>
    </div>
</div>

<hr>

<!-- Confirmed -->
<!-- Confirmed -->
<!-- Confirmed -->
<div class="container-fluid modal-content" >
    <div class="row shadow item">

        <div class="col col-sm-3 align-self-center">

            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->                 
            <div class="text-center">
                <i class="material-icons">check_box</i>
            </div>  
        </div>

        <div class="col col-sm">

            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <div class="container">
                <div class="row">
                    <div class="col-sm">
                        <h1>CONFIRMED</h1>
                        <hr>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">            
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">                
                    </div>
                </div>
            </div>

        </div>

        <div class="col col-sm-3 align-self-center">

            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->                 
            <div class="text-center">
                <c:choose>
                    <c:when test="${event.confirmedAck}">
                        <i class="material-icons">check</i>

                    </c:when>
                    <c:otherwise>
                        <i class="material-icons">clear</i>
                    </c:otherwise>
                </c:choose> 
            </div>  

        </div>
    </div>
</div>

<hr>

<!-- Location -->
<!-- Location -->
<!-- Location -->
<div class="container-fluid modal-content" >
    <div class="row shadow item">

        <div class="col col-sm-3 align-self-center">

            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->                 
            <div class="text-center">
                <i class="material-icons">location_on</i>
            </div>  
        </div>

        <div class="col col-sm">

            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <div class="container">
                <div class="row">
                    <div class="col-sm">
                        <h1>LOCATION</h1>
                        <hr>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">    
                        <h3>${event.locations.name}</h3>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">                
                        ${event.locations.city}
                    </div>
                </div>
            </div>

        </div>

        <div class="col col-sm-3 align-self-center">

            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->                 
            <div class="text-center">
                <c:choose>
                    <c:when test="${event.locationAck}">
                        <i class="material-icons">check</i>

                    </c:when>
                    <c:otherwise>
                        <i class="material-icons">clear</i>
                    </c:otherwise>
                </c:choose> 
            </div>  
        </div>  

    </div>
</div>
</div>

<hr>


<!-- Client -->
<!-- Client -->
<!-- Client -->
<div class="container-fluid modal-content" >
    <div class="row shadow item">

        <div class="col col-sm-3 align-self-center">

            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->                 
            <div class="text-center">
                <i class="material-icons">person</i>
            </div>  
        </div>

        <div class="col col-sm">

            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <div class="container">
                <div class="row">
                    <div class="col-sm">
                        <h1>CLIENT</h1>
                        <hr>
                    </div>
                </div>


                <div class="row">
                    <div class="col-sm">    

                        ${event.clients.name}



                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">    

                    </div>
                </div>
            </div>

        </div>

        <div class="col col-sm-3 align-self-center">

            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->                 
            <div class="text-center">
                <c:choose>
                    <c:when test="${event.clientAck}">
                        <i class="material-icons">check</i>

                    </c:when>
                    <c:otherwise>
                        <i class="material-icons">clear</i>
                    </c:otherwise>
                </c:choose> 
            </div>  

        </div>
    </div>
</div>

<hr>
<!-- CROWD -->
<!-- CROWD -->
<!-- CROWD -->
<div class="container-fluid modal-content" >
    <div class="row shadow item">

        <div class="col col-sm-3 align-self-center">

            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->                 
            <div class="text-center">
                <i class="material-icons">people</i>
            </div>  
        </div>

        <div class="col col-sm">

            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <div class="container">
                <div class="row">
                    <div class="col-sm">
                        <h1>CROWD</h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">            
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">                
                    </div>
                </div>
            </div>

        </div>

        <div class="col col-sm-3 align-self-center">

            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->                 
            <div class="text-center">
                <c:choose>
                    <c:when test="${event.crowdAck}">
                        <i class="material-icons">check</i>

                    </c:when>
                    <c:otherwise>
                        <i class="material-icons">clear</i>
                    </c:otherwise>
                </c:choose> 
            </div>  

        </div>
    </div>
</div>

<hr>

<!-- PAYMENTS -->
<!-- PAYMENTS -->
<!-- PAYMENTS -->
<div class="container-fluid modal-content" >
    <div class="row shadow item">

        <div class="col col-sm-3 align-self-center">

            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->
            <!-- ICON COLUMN -->                 
            <div class="text-center">
                <i class="material-icons">account_balance_wallet</i>
            </div>  
        </div>

        <div class="col col-sm">

            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <!-- DETAIL MIDDLE COLUMN -->
            <div class="container">
                <div class="row">
                    <div class="col-sm">
                        <h1>PAYMENTS</h1>
                        <hr>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">            
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm">                
                    </div>
                </div>
            </div>

        </div>

        <div class="col col-sm-3 align-self-center">

            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->
            <!-- CHECK COLUMN -->                 
            <div class="text-center">

            </div>  

        </div>
    </div>
</div>

<hr>

<button type="button" class="btn btn-danger btn-lg btn-block">CANCEL EVENT</button>
</body>
</html>
