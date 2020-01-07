<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- Dependancies voor data format -->
<html>

    <head>
        <title>Events</title>
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
    <nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
            <div class="row justify-content-center">

                <div class="col-1" onclick="location.href = '<c:url value='/'/>';" style="cursor: pointer;">
                    <i class="material-icons my-auto text-white">home</i>
                </div>

            </div>

            <div class="col-8">
                <h4 class="text-center my-auto text-white">EVENTS</h4>
            </div>

            <div class="col col-1" onclick="location.href = '<c:url value='/eventtypes/new-${hotartist.id}-${0}-${false}'/>';" style="cursor: pointer;">

                <i class="material-icons my-auto text-white">add</i>

            </div>

        </div>

    </div>
</nav>




<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="<c:url value='/'/>">Home</a></li>
    <li class="breadcrumb-item"><a href="<c:url value='/artists'/>">Artists</a></li>
    <li class="breadcrumb-item active">${hotartist.name} - Events</li>
</ol>
</head>

<body>   

    <c:forEach items="${eventsnok}" var="eventnok">
        <div class="text-center ">
            <hr>
            <h1 class="bg-dark text-white">NEW</h1>                         
            <hr>
        </div> 


        <div class="container-fluid">
            <div class="row ">  

                <div class="col">

                    <!--Weergave van één event  -->
                    <!--Weergave van één event  -->
                    <!--Weergave van één event  -->
                    <div class="modal-content shadow bg-warning">

                        <div onclick="location.href = '<c:url value='/events/detail-${eventnok.id}'/>';" style="cursor: pointer;">

                            <div>

                                <div class="text-center ">
                                    <h1 ><c:out value="${eventnok.name}"/></h1>   
                                    <h6 ><c:out value="${eventnok.eventType.name}"/></h6>                           
                                </div> 
                            </div>    

                        </div>

                        <div class="modal-footer">

                            <button onclick="window.location.href = '<c:url value='/events/delete-${eventnok.id}-event-${hotartist.id}'/>';" type="button" class="btn btn-danger">
                                <i class="material-icons small">clear</i>
                            </button>   
                        </div>
                    </div>

                    <hr>


                </div>
            </div>
        </div>

    </c:forEach>


    <c:forEach items="${events}" var="event">

        <div class="text-center ">
            <hr>
            <h1 class="bg-dark text-white">FUTURE EVENTS</h1>                         
            <hr>
        </div> 


        <div class="container-fluid">
            <div class="row ">  

                <div class="col">

                    <!--Weergave van één event  -->
                    <!--Weergave van één event  -->
                    <!--Weergave van één event  -->
                    <div class="modal-content shadow">

                        <div onclick="location.href = '<c:url value='/events/detail-${event.id}'/>';" style="cursor: pointer;">

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

                            <!-- EDIT EVENT - UNDER CONSTRUCTION 
                                        <button onclick="window.location.href = '<c:url value='NO PAGE'/>';" type="button" class="btn btn-warning">
                                            <i class="material-icons small">edit</i>
                                        </button>
                            -->

                            <button onclick="window.location.href = '<c:url value='/events/delete-${event.id}-event-${hotartist.id}'/>';" type="button" class="btn btn-danger">
                                <i class="material-icons small">clear</i>
                            </button>   
                        </div>
                    </div>

                    <hr>


                </div>
            </div>
        </div>


    </c:forEach>




    <button onclick="window.location.href = '<c:url value='/events/opn-events-all-${hotartist.id}'/>';"  type="button" class="btn btn-outline-secondary btn-block">SHOW ALL</button>

</body>

</body>
</html>
