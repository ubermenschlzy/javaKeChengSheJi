
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

public class download extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //µÃµ½ÒªÏÂÔØµÄÎÄ¼þÃû
        String fileName = request.getParameter("filename");  //23239283-92489-°¢·²´ï.avi
        String a=request.getParameter("a");
        System.out.println("aaaaaaaa"+a);
        System.out.println(fileName);
        fileName = new String(fileName.getBytes("iso8859-1"),"UTF-8");
        //ÉÏ´«µÄÎÄ¼þ¶¼ÊÇ±£´æÔÚ/WEB-INF/uploadÄ¿Â¼ÏÂµÄ×ÓÄ¿Â¼µ±ÖÐ
        String fileSaveRootPath="D:\\Documents\\Homework\\Java\\Course Design\\Project\\web\\WEB-INF\\upload\\151002617";
        //Í¨¹ýÎÄ¼þÃûÕÒ³öÎÄ¼þµÄËùÔÚÄ¿Â¼
        String path = findFileSavePathByFileName(fileName,fileSaveRootPath);
        //µÃµ½ÒªÏÂÔØµÄÎÄ¼þ
        File file = new File(path + "\\" + fileName);
        //Èç¹ûÎÄ¼þ²»´æÔÚ
        if(!file.exists()){
            request.setAttribute("message", "fail");
            request.getRequestDispatcher("/WEB-INF/messagerefresh.jsp").forward(request, response);
            return;
        }
        //´¦ÀíÎÄ¼þÃû
        String realname = fileName.substring(fileName.indexOf("_")+1);
        //ÉèÖÃÏìÓ¦Í·£¬¿ØÖÆä¯ÀÀÆ÷ÏÂÔØ¸ÃÎÄ¼þ
        response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(realname, "UTF-8"));
        //¶ÁÈ¡ÒªÏÂÔØµÄÎÄ¼þ£¬±£´æµ½ÎÄ¼þÊäÈëÁ÷
        FileInputStream in = new FileInputStream(path + "\\" + fileName);
        //´´½¨Êä³öÁ÷
        OutputStream out = response.getOutputStream();
        //´´½¨»º³åÇø
        byte buffer[] = new byte[1024];
        int len = 0;
        //Ñ­»·½«ÊäÈëÁ÷ÖÐµÄÄÚÈÝ¶ÁÈ¡µ½»º³åÇøµ±ÖÐ
        while((len=in.read(buffer))>0){
            //Êä³ö»º³åÇøµÄÄÚÈÝµ½ä¯ÀÀÆ÷£¬ÊµÏÖÎÄ¼þÏÂÔØ
            out.write(buffer, 0, len);
        }
        //¹Ø±ÕÎÄ¼þÊäÈëÁ÷
        in.close();
        //¹Ø±ÕÊä³öÁ÷
        out.close();
    }

    /**
     * @Method: findFileSavePathByFileName
     * @Description: Í¨¹ýÎÄ¼þÃûºÍ´æ´¢ÉÏ´«ÎÄ¼þ¸ùÄ¿Â¼ÕÒ³öÒªÏÂÔØµÄÎÄ¼þµÄËùÔÚÂ·¾¶
     * @Anthor:¹Â°Á²ÔÀÇ
     * @param filename ÒªÏÂÔØµÄÎÄ¼þÃû
     * @param saveRootPath ÉÏ´«ÎÄ¼þ±£´æµÄ¸ùÄ¿Â¼£¬Ò²¾ÍÊÇ/WEB-INF/uploadÄ¿Â¼
     * @return ÒªÏÂÔØµÄÎÄ¼þµÄ´æ´¢Ä¿Â¼
     */
    public String findFileSavePathByFileName(String filename,String saveRootPath){
        String dir = saveRootPath;  //upload\2\3  upload\3\5
        System.out.println(dir);
        File file = new File(dir);
        if(!file.exists()){
            //´´½¨Ä¿Â¼
            file.mkdirs();
        }
        return dir;
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}