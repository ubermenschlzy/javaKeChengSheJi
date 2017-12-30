import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String password = request.getParameter("password");
        System.out.println("fkkkk");
        if(id != null && password != null) {
            if (ConnectMysql.checkUser(id, password)){
                String name = ConnectMysql.GetNameById(id);
                request.setAttribute("name", name);
                String type = ConnectMysql.GetTypeById(id);
                if(type == null){
                    System.out.println("exit");
                }
                System.out.println(type);
                if(type.trim().equals("1")){//teacher
                    System.out.println("?");
                    request.getRequestDispatcher("/WEB-INF/indexT.jsp").forward(request, response);}
                if(type.trim().equals("2")) {
                    System.out.println("??");
                    request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
                }

                return;
            }
        }
        System.out.println("sfsddg");
        request.setAttribute("result","登陆失败");
        request.getRequestDispatcher("login.jsp").forward(request, response);
        //response.sendRedirect("LoginFail.jsp");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}