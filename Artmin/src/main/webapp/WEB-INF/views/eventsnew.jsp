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

        <h1 class="text-white">new EVENT</h1>     

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
        <li class="breadcrumb-item"><a href="<c:url value='/events/opn-events-${hotartist.id}'/>">Events</a></li>
        <li class="breadcrumb-item active">new Event</li>
    </ol>
</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-">
            </div>

            <div class="col-lg">

                <form:form method="POST" modelAttribute="event">
                    <form:input type="hidden" path="id" id="id"/>
                     <form:input type="hidden" path="artistID" id="artistID" value="${hotartist.id}"/>
                    <fieldset>    

                        <!--EVENT NAME-->
                        <!--EVENT NAME-->
                        <!--EVENT NAME-->
                        <div class="form-group">
                            <label for="exampleInputEmail1">Event name</label>

                            <form:input path="name" id="name" class="form-control" placeholder="Event Name"/>
                        </div>

                        <!--Event TYPE-->
                        <!--Event TYPE-->
                        <!--Event TYPE-->                            

                        <div class="form-group">
                            <label for="exampleSelect1">Event Type</label>

                            <select name="eventTypeID" class="form-control">                                
                                <c:forEach items="${eventtypes}" var="eventtype">
                                    <option value="${eventtype.id}"><h1><c:out value="${eventtype.name}"/></h1></option>
                                    </c:forEach>
                            </select>
                        </div>

                        <hr>

                        <!--CALENDAR DATE-->
                        <!--CALENDAR DATE-->
                        <!--CALENDAR DATE-->
                        <div class="form-group">
                            <label for="exampleInputEmail1">Calendar Date</label>

                            <form:input type="datetime-local" path="dateCalendar" id="dateCalendar" class="form-control" placeholder="YYYY/MM/DD hh:mm:ss"/>

                            <small class="form-text text-muted">YYYY/MM/DD hh:mm:ss</small>
                        </div>

                        <hr>

                        <!--ACT START-->
                        <!--ACT START-->
                        <!--ACT START-->
                        <div class="form-group">
                            <label for="exampleInputEmail1">Act Start</label>

                            <form:input type="datetime-local" path="dateActStart" id="dateActStart" class="form-control" placeholder="YYYY/MM/DD hh:mm:ss"/>

                            <small class="form-text text-muted">YYYY/MM/DD hh:mm:ss</small>
                        </div>

                        <!--ACT END-->
                        <!--ACT END-->
                        <!--ACT END-->
                        <div class="form-group">
                            <label for="exampleInputEmail1">Act End</label>

                            <form:input type="datetime-local" path="dateActEnd" id="dateActEnd" class="form-control" placeholder="YYYY/MM/DD hh:mm:ss"/>

                            <small class="form-text text-muted">YYYY/MM/DD hh:mm:ss</small>
                        </div>

                        <hr>

                        <button type="submit" class="btn btn-primary">ADD Event</button>

                    </fieldset>
                </form:form>

            </div>
            <div class="col-">              
            </div>
        </div>
</body>
</html>