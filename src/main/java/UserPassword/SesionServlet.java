package UserPassword;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name="SesionServlet", urlPatterns={ "/sesion/SesionServlet" })

public class SesionServlet extends  HttpServlet{
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        HttpSession session = request.getSession();

        session.setAttribute("nombre", request.getParameter("nombre"));
        
        request.getRequestDispatcher("../view/Sesion-Bienvenida.jsp").include(request, response);
    }
}
