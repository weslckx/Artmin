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

        <h1 class="text-white">ARTISTS</h1>

        <a href="<c:url value='/artists/new'/>"> <button class="btn btn-secondary my-2 my-sm-0">New</button></a>       

    </nav>

    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<c:url value='/'/>">Home</a></li>
        <li class="breadcrumb-item active">Artists</li>
    </ol>
</head>


<body>  
    <div class="container">
        <div class="row">
            <div class="col-">
            </div>

            <div class="col-lg">
                <c:forEach items="${artists}" var="artist">

                    <!--Weergave van één artist  -->
                    <!--Weergave van één artist  -->
                    <!--Weergave van één artist  -->

                    <div class="card bg-light mb-3">
                        <A href="<c:url value='/events//opn-events-${artist.id}'/>">
                            <div class="card-header">
                                <h1><c:out value="${artist.name}"/></h1>   
                                <h6><c:out value="${artist.description}"/></h6>  
                            </div>
                        </A>

                        <div class="container">
                            <div class="row">
                                <div class="col-sm">
                                    <a href="<c:url value='/artists/delete-${artist.id}-artist'/>"><button type="button" class="btn btn-danger">DELETE</button> </a></td>

                                </div>
                                <div class="col-sm">
                                    <a href="<c:url value='/artists/edit-${artist.id}-artist'/>"><button type="button" class="btn btn-warning">EDIT</button></a></td>

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
</html>
