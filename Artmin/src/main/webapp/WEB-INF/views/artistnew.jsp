<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

        <h1 class="text-white">new ARTIST</h1>     

        <a href="<c:url value='/events/new'/>"> <button class="btn btn-secondary my-2 my-sm-0">New</button></a>    


    </nav>

    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<c:url value='/'/>">Home</a></li>
        <li class="breadcrumb-item"><a href="<c:url value='/artists'/>">Artists</a></li>
        <li class="breadcrumb-item active">new Artist</li>
    </ol>
</head>


<body>



</body>
<div class="container">
    <div class="row">
        <div class="col-">
        </div>

        <div class="col-lg">

            <form:form method="POST" modelAttribute="artist">
                <form:input type="hidden" path="id" id="id"/>
                <fieldset>    

                    <!--ARTIST NAME-->
                    <!--ARTIST NAME-->
                    <!--ARTIST NAME-->
                    <div class="form-group">
                        <label for="exampleInputEmail1">Artist Name</label>
                        <form:input path="name" id="name" class="form-control" placeholder="Artist Name"/>
                    </div>   

                    <!-- BESCHRIJVING -->
                    <!-- BESCHRIJVING -->
                    <!-- BESCHRIJVING -->
                    <div class="form-group">
                        <label for="exampleInputEmail1">Description</label>
                        <form:input path="description" id="description" class="form-control" placeholder="Description"/>
                    </div>  

                    <hr>
                    
                    <!-- Logo Url -->
                    <!-- Logo Url -->
                    <!-- Logo Url -->
                    <div class="form-group">
                        <label for="exampleInputEmail1">Logo Url</label>
                        <form:input path="logoUrl" id="logoUrl" class="form-control" placeholder="Logo Url"/>
                    </div>  

                    <!-- SUBMIT BUTTON -->
                    <!-- SUBMIT BUTTON -->
                    <!-- SUBMIT BUTTON -->
                    <c:choose>
                        <c:when test="${edit}">
                            <button type="submit" class="btn btn-primary">Update Artist</button>

                        </c:when>
                        <c:otherwise>
                            <button type="submit" class="btn btn-primary">Add Artist</button>

                        </c:otherwise>
                    </c:choose>                

                </fieldset>
            </form:form>

        </div>
        <div class="col-">              
        </div>
    </div>
</html>