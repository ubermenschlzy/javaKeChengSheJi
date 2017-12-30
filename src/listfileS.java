
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


public class listfileS extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String num = request.getParameter("type");
        System.out.println(num);
        String tempPath = "/WEB-INF/upload/"+num;

        System.out.println(tempPath);
        //String uploadFilePath = this.getServletContext().getRealPath("/WEB-INF/upload/1");
        String uploadFilePath = "D:\\Documents\\Homework\\Java\\Course Design\\Project\\web\\WEB-INF\\upload";
        //´æ´¢ÒªÏÂÔØµÄÎÄ¼þÃû
        Map<String,String> fileNameMap = new HashMap<String,String>();
        //µÝ¹é±éÀúfilepathÄ¿Â¼ÏÂµÄËùÓÐÎÄ¼þºÍÄ¿Â¼£¬½«ÎÄ¼þµÄÎÄ¼þÃû´æ´¢µ½map¼¯ºÏÖÐ
        listfile(new File(uploadFilePath),fileNameMap);//File¼È¿ÉÒÔ´ú±íÒ»¸öÎÄ¼þÒ²¿ÉÒÔ´ú±íÒ»¸öÄ¿Â¼
        //½«Map¼¯ºÏ·¢ËÍµ½listfile.jspÒ³Ãæ½øÐÐÏÔÊ¾
        System.out.println(fileNameMap);
        request.setAttribute("fileNameMap", fileNameMap);
        request.getRequestDispatcher("/WEB-INF/listfileupS.jsp").forward(request, response);
    }


    public void listfile(File file,Map<String,String> map){
        //Èç¹ûfile´ú±íµÄ²»ÊÇÒ»¸öÎÄ¼þ£¬¶øÊÇÒ»¸öÄ¿Â¼
        if(!file.isFile()){
            //ÁÐ³ö¸ÃÄ¿Â¼ÏÂµÄËùÓÐÎÄ¼þºÍÄ¿Â¼
            File files[] = file.listFiles();
            //±éÀúfiles[]Êý×é
            for(File f : files){
                //µÝ¹é
                listfile(f,map);
            }
        }else{
            /**
             * ´¦ÀíÎÄ¼þÃû£¬ÉÏ´«ºóµÄÎÄ¼þÊÇÒÔuuid_ÎÄ¼þÃûµÄÐÎÊ½È¥ÖØÐÂÃüÃûµÄ£¬È¥³ýÎÄ¼þÃûµÄuuid_²¿·Ö
             file.getName().indexOf("_")¼ìË÷×Ö·û´®ÖÐµÚÒ»´Î³öÏÖ"_"×Ö·ûµÄÎ»ÖÃ£¬Èç¹ûÎÄ¼þÃûÀàËÆÓÚ£º9349249849-88343-8344_°¢_·²_´ï.avi
             ÄÇÃ´file.getName().substring(file.getName().indexOf("_")+1)´¦ÀíÖ®ºó¾Í¿ÉÒÔµÃµ½°¢_·²_´ï.avi²¿·Ö
             */
            String realName = file.getName().substring(file.getName().indexOf("_")+1);
            //file.getName()µÃµ½µÄÊÇÎÄ¼þµÄÔ­Ê¼Ãû³Æ£¬Õâ¸öÃû³ÆÊÇÎ¨Ò»µÄ£¬Òò´Ë¿ÉÒÔ×÷Îªkey£¬realNameÊÇ´¦Àí¹ýºóµÄÃû³Æ£¬ÓÐ¿ÉÄÜ»áÖØ¸´
            map.put(file.getName(), realName);
            System.out.println(realName);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}