import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;

public class DownloadServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //得到要下载的文件名
        String text=request.getParameter("comment");
        String fileName = request.getParameter("filename");
        String realfile=request.getParameter("subname");
        String chapter =request.getParameter("chapter");
        String path="D:\\Documents\\Homework\\Java\\Course Design\\Project\\pdf\\";
        if(text!=null){
            String s=path+fileName+".txt";
            File file=new File(new String(s.getBytes("iso8859-1"),"UTF-8"));
            OutputStreamWriter out = new OutputStreamWriter(new FileOutputStream(file),"UTF-8");
            String str=new String(text.getBytes("iso8859-1"),"UTF-8");
            System.out.println("out:"+str.trim());
            out.write(str.trim().toCharArray());
            out.flush();
            out.close();
//            FileWriter f=new FileWriter(new String(s.getBytes("iso8859-1"),"UTF-8"));
//            f.write(new String(text.getBytes("iso8859-1"),"UTF-8"));
//            f.close();
            //response.sendRedirect("/WEB-INF/listfile.jsp");
            request.getRequestDispatcher("/servlet/ListFileServlet").forward(request, response);
            return;
        }
        fileName = new String(fileName.getBytes("iso8859-1"),"UTF-8");
        //上传的文件都是保存在/WEB-INF/upload目录下的子目录当中
        //通过文件名找出文件的所在目录
        //得到要下载的文件
        File file = new File(path + "\\" + fileName);
        //如果文件不存在
        if(!file.exists()){
            request.setAttribute("message", "您要下载的资源已被删除！！");
            request.getRequestDispatcher("/WEB-INF/message.jsp").forward(request, response);
            return;
        }
        //处理文件名
        String realname = fileName;
        //设置响应头，控制浏览器下载该文件
        response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(realname, "UTF-8"));
        //读取要下载的文件，保存到文件输入流
        FileInputStream in = new FileInputStream(path + "\\" + fileName);
        //创建输出流
        OutputStream out = response.getOutputStream();
        //创建缓冲区
        byte buffer[] = new byte[1024];
        int len = 0;
        //循环将输入流中的内容读取到缓冲区当中
        while((len=in.read(buffer))>0){
            //输出缓冲区的内容到浏览器，实现文件下载
            out.write(buffer, 0, len);
        }
        //关闭文件输入流
        in.close();
        //关闭输出流
        out.close();
        ConnectMysql.updatePdf(realfile,chapter);
//        response.sendRedirect("test.jsp");

        response.sendRedirect("/servlet/ListFileServlet");
        //request.getRequestDispatcher("listfile.jsp").forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}