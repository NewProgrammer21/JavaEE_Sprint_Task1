package kz.bitlab.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.db.DBManager;
import kz.bitlab.db.Tasks;

import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id=-1L;
        try {
            id = Long.parseLong(req.getParameter("task_id"));
        }catch (Exception e) {
        }

        Tasks task= DBManager.getTask(id);
        req.setAttribute("task",task);
        req.getRequestDispatcher("details.jsp").forward(req, resp);
    }
}
