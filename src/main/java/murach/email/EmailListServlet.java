package murach.email; 
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import murach.business.User; 



public class EmailListServlet extends HttpServlet { 
    @Override 
    public void doPost(HttpServletRequest request, 
                            HttpServletResponse response) 
                    throws ServletException, IOException {
        String url = "/index.jsp"; 
        String action = request.getParameter("action"); 
        if (action == null) {
            action = "join";
            }
        
        if (action.equals("join")) { 
            url = "/index.jsp";
        }
        else if (action.equals("add")) {
            String firstName = request.getParameter("firstName"); 
            String lastName = request.getParameter("lastName"); 
            String email = request.getParameter("email"); 
            User user = new User(firstName, lastName, email); 
            //UserDB.insert(user); 
            request.setAttribute("user", user); 
            url = "/thanks.jsp";
        }
        getServletContext() 
            .getRequestDispatcher(url) 
            .forward(request, response); 
    }
    @Override
    protected void doGet (HttpServletRequest request,
                          HttpServletResponse response)
                          throws ServletException, IOException {
                            doPost(request, response);
                          }
                        }
