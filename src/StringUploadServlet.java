import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class StringUploadServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String message = request.getParameter("message");
        String chapter = request.getParameter("chapter");
        String index = request.getParameter("index");
        String strType = request.getParameter("strType");

        System.out.println("??");

        if(chapter == null || index == null || strType == null){
            System.out.println("????");
            request.setAttribute("result", "请填充完整信息");
            request.getRequestDispatcher("/WEB-INF/indexT.jsp").forward(request, response);
        }
        else{

            String path = "D:\\Documents\\Homework\\Java\\Course Design\\Project";
            if(strType.trim().equals("1")){
                path += "\\base\\" ;
            }
            else if(strType.trim().equals("2")){
                path += "\\tech\\" ;
            }
            else if(strType.trim().equals("3")){
                path += "\\importance\\" ;
            }
            else if(strType.trim().equals("4")){
                path += "\\hard\\" ;
            }

            String fileMName = path + chapter + "\\" + chapter + "_" + index + ".txt";
            String fileHName = path + chapter + "\\" + chapter + "_" + index + ".pdf";

            message.replaceAll("\n", "");
            System.out.println(fileMName);
            byte[] sourceByte = message.getBytes();
            if(null != sourceByte) try {
                File file = new File(fileMName);        //文件路径（路径+文件名）
                if (!file.exists()) {    //文件不存在则创建文件，先创建目录
                    File dir = new File(file.getParent());
                    dir.mkdirs();
                    file.createNewFile();
                }
                FileOutputStream outStream = new FileOutputStream(file);    //文件输出流用于将数据写入文件
                outStream.write(sourceByte);
                outStream.close();    //关闭文件输出流
            } catch (Exception e) {
                e.printStackTrace();
            }

            request.setAttribute("message",message);
            request.getRequestDispatcher("/WEB-INF/message.jsp").forward(request, response);
        }

        request.setAttribute("result", "success");
            request.getRequestDispatcher("/WEB-INF/indexT.jsp").forward(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("fk");
        String message = request.getParameter("message");
        String chapter = request.getParameter("chapter");
        String index = request.getParameter("index");
        String strType = request.getParameter("strType");
        System.out.println(message);
        System.out.println(chapter);
        doGet(request, response);
    }
}