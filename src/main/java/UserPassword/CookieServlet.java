package UserPassword;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name="CookieServlet", urlPatterns = { "/cookies/CookieServlet" })
public class CookieServlet extends HttpServlet {
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        
        String nombre = request.getParameter("nombre");
        String password = request.getParameter("password");

        
        Cookie cookieNombre = new Cookie("nombre", nombre);
        Cookie cookiePassword = new Cookie("password", password);

        response.addCookie(cookieNombre);
        response.addCookie(cookiePassword);

        request.getRequestDispatcher("../view/result.jsp").forward(request, response);
    }
}
