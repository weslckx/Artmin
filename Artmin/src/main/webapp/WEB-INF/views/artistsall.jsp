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
                        <h1 align="center"  class="text-white">ARTISTS</h1>
                    </div>

                    <div class="col align-self-center">
                        <div class="text-right">
                            <a href="<c:url value='/artists/new'/>">
                                <button class="btn btn-secondary align-content-center">New</button>
                            </a>  
                        </div>
                    </div>
                </div>  
            </div>
        </nav>

        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<c:url value='/'/>">Home</a></li>
            <li class="breadcrumb-item active">Artists</li>
        </ol>
    </head>


    <body>  
        <div class="container-fluid">
            <div class="row">  
                <div class="col-sm d-none d-xl-block">

                </div>

                <div class="col">
                    <c:forEach items="${artists}" var="artist">

                        <!--Weergave van één artist  -->
                        <!--Weergave van één artist  -->
                        <!--Weergave van één artist  -->
                        <div class="modal-content shadow">

                            <div onclick="location.href = '<c:url value='/events/opn-events-${artist.id}'/>';" style="cursor: pointer;">

                                <div class="text-center">
                                    <h1 align="center"><c:out value="${artist.name}"/></h1>   
                                    <h6 align="center"><c:out value="${artist.description}"/></h6>  
                                </div> 
                            </div>


                            <div class="modal-footer">
                                <button onclick="window.location.href = '<c:url value='/artists/edit-${artist.id}-artist'/>';" type="button" class="close mr-auto" data-dismiss="modal">
                                    <button type="button" class="btn btn-danger">Delete</button>   
                                </button>

                                <button onclick="window.location.href = '<c:url value='/artists/delete-${artist.id}-artist'/>';" type="button" class="close" data-dismiss="modal">
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
    </body>
</html>
