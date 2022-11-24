/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import login.DBConnect;
import login.User;
import login.UserDatabase;
import medicine.MedDao;

/**
 *
 * @author CSE
 */
@WebServlet(urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");
            
            out.println("         <link\n" +
"            href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\"\n" +
"            rel=\"stylesheet\"\n" +
"            integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\"\n" +
"            crossorigin=\"anonymous\"\n" +
"            />\n" +
"        <link\n" +
"            rel=\"stylesheet\"\n" +
"            href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css\"\n" +
"            /> ");
            out.println("</head>");
            out.println("<body>");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String role = request.getParameter("role");
            int id = (int) Math.random();
            User user = new User(id, name, email, password, role);
            try {
                UserDatabase dao = new UserDatabase(DBConnect.getConnection());
                List<User>  allUsers=  UserDatabase.getAllUsers();
                boolean checkEmail=true;
                boolean checkName=true;
                
                 for(int i=0; i<allUsers.size();i++){
                  if(user.getEmail().equals(allUsers.get(i).getEmail()) ){
                      checkEmail=false;
                      break;
                  }
                  else if(user.getName().equals(allUsers.get(i).getName())){
                      checkName=false;
                  }
                 }
                if (dao.Register(user) && checkEmail && checkName) {
                   response.sendRedirect("addMedecine.jsp");
                } else {
                    if(checkEmail){
                        out.println("<h1 class=\"text-danger\">"+email+" has been taken by other </h1>");
                        out.println("<a class=\"btn btn-success\" href=\"addUser.jsp\">Back to register </a>");
                    }
                    else if(checkName){
                        out.println("<h5 class=\"text-danger\">"+name+" has been taken by other </h5>");
                        out.println("<a class=\"btn btn-success\" href=\"addUser.jsp\">Back to register </a>");
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            
//            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
