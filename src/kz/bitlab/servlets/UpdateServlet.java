package kz.bitlab.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.db.DBManager;
import kz.bitlab.db.Tasks;

import java.io.IOException;

@WebServlet(value = "/save-task")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id=Long.parseLong(req.getParameter("task_id"));
        String name=req.getParameter("task_name");
        String description=req.getParameter("task_description");
        String deadline=req.getParameter("task_deadline");
        String status=req.getParameter("task_status");

        Tasks task= DBManager.getTask(id);
        if(task!=null){
            task.setName(name);
            task.setDescription(description);
            task.setDeadlineDate(deadline);
            task.setStatus(status);

            DBManager.updateTask(task);
            resp.sendRedirect("/");
        }
    }
}
