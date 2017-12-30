
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;


public class WriteServlet extends HttpServlet {

    public void doGet(HttpServletRequest req,HttpServletResponse res){

        String str = req.getParameter("textname");
        System.out.println(str+"111111");

        try {

            //中文乱码
            res.setContentType("text/html;charset=utf-8");

            PrintWriter pw=res.getWriter();

            //创建一个FileWriter  看内存数据 ->  磁盘文件(写入,输出)
            //看内存数据 <-  磁盘文件(读入,输入)
            FileWriter  f=new FileWriter("D:\\Documents\\Homework\\Java\\Course Design\\Project\\web\\WEB-INF\\upload\\a.txt");

            BufferedWriter bw=new BufferedWriter(f);

            //在文件中写入数据
            bw.write(str);

            //关闭文件流
            bw.close();
            req.getRequestDispatcher("/WEB-INF/listStyle.jsp").forward(req, res);


        }
        catch (Exception ex) {

            ex.printStackTrace();

        }

    }





    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}