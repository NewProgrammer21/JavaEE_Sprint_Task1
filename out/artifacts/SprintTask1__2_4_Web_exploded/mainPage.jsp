<%@ page import="kz.bitlab.db.Tasks" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Main Page</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
    <%@include file="navbar.jsp"%>
    <div class="container mt-3">
      <div class="row mt-3">
        <div class="col-12">
          <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#addTask">
            + ADD TASK
          </button>

          <div class="modal fade" id="addTask" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="exampleModalLabel">New Task</h1>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <%@include file="addTask.jsp"%>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row mt-3">
        <div class="col-12">
          <table class="table table-striped table-hover">
            <thead>
            <tr>
              <th>ID</th>
              <th>NAME</th>
              <th>DEADLINE</th>
              <th>STATUS</th>
              <th>DETAILS</th>
            </tr>
            </thead>
            <tbody>
            <%
              ArrayList<Tasks> tasks=(ArrayList<Tasks>) request.getAttribute("tasks");
              if(tasks!=null){
                for(Tasks task:tasks){
            %>
            <tr>
              <td><%=task.getId()%></td>
              <td><%=task.getName()%></td>
              <td><%=task.getDeadlineDate()%></td>
              <td><%=task.getStatus()%></td>
              <td><a class="btn btn-primary btn-sm" href="details?task_id=<%=task.getId()%>">DETAILS</a></td>
            </tr>
            <%
                }
              }
            %>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </body>
</html>
