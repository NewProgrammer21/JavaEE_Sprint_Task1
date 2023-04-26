<%@ page import="kz.bitlab.db.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task Details Page</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <div class="container mt-5">
        <%
            Tasks task = (Tasks) request.getAttribute("task");
        %>

        <form action="/save-task" method="post">
            <input type="hidden" name="task_id" value="<%=task.getId()%>">
            <div class="row">
                <div class="col-12">
                    <label>Name:</label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <input type="text" class="form-control" name="task_name" value="<%=task.getName()%>">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label>Description:</label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <textarea class="form-control" name="task_description" rows="5"><%=task.getDescription()%></textarea>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label>Deadline:</label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <input type="date" class="form-control" name="task_deadline" value="<%=task.getDeadlineDate()%>">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label>Status:</label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <select class="form-select" name="task_status">
                        <option <%=(task.getStatus().equals("Yes")?"selected":"") %>>Yes</option>
                        <option <%=(task.getStatus().equals("No")?"selected":"") %>>No</option>
                    </select>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <button class="btn btn-success">SAVE</button>
                </div>
            </div>
        </form>

        <form action="/delete-task" method="post">
            <input type="hidden" name="task_id" value="<%=task.getId()%>">
            <button type="submit" class="btn btn-danger">Delete</button>
        </form>
    </div>
</body>
</html>
