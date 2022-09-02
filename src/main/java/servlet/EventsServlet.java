package servlet;

import manager.EventManager;
import model.Event;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = "/events")
public class EventsServlet extends HttpServlet {

    private EventManager eventManager = new EventManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<Event> eventList = eventManager.getAllEvent();
            req.setAttribute("events", eventList);
            req.getRequestDispatcher("/WEB-INF/events.jsp").forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);

        }
    }
}
