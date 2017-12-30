import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

public class RegisterServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String id = request.getParameter("id");
        String type = request.getParameter("strType");
        String password = request.getParameter("password");

        System.out.println(name);
        System.out.println(id);
        System.out.println(type);
        System.out.println(password);

        if(id == null || name == null || type == null || password == null){
            request.setAttribute("result","注册失败");
            //response.sendRedirect("RegisterFail.jsp");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        else {
            boolean b = ConnectMysql.IsExistedId(id);
            if(!b){
                request.setAttribute("result","注册失败");
                //response.sendRedirect("RegisterFail.jsp");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
            else{
                type = type.trim();
                ConnectMysql.addUser(id,name,type,password);
                response.sendRedirect("login.jsp");
            }
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}