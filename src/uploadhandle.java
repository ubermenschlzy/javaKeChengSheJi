import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class uploadhandle extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	/*
                //µÃµ½ÉÏ´«ÎÄ¼þµÄ±£´æÄ¿Â¼£¬½«ÉÏ´«µÄÎÄ¼þ´æ·ÅÓÚWEB-INFÄ¿Â¼ÏÂ£¬²»ÔÊÐíÍâ½çÖ±½Ó·ÃÎÊ£¬±£Ö¤ÉÏ´«ÎÄ¼þµÄ°²È«
                String savePath = this.getServletContext().getRealPath("/WEB-INF/upload");
                File file = new File(savePath);
                //ÅÐ¶ÏÉÏ´«ÎÄ¼þµÄ±£´æÄ¿Â¼ÊÇ·ñ´æÔÚ
                if (!file.exists() && !file.isDirectory()) {
                    System.out.println(savePath+"Ä¿Â¼²»´æÔÚ£¬ÐèÒª´´½¨");
                    //´´½¨Ä¿Â¼
                    file.mkdir();
                }
                */
        //ÏûÏ¢ÌáÊ¾
        System.out.println("???");
        String message = "";
        String tempPath = "";
        try{
            //Ê¹ÓÃApacheÎÄ¼þÉÏ´«×é¼þ´¦ÀíÎÄ¼þÉÏ´«²½Öè£º
            //1¡¢´´½¨Ò»¸öDiskFileItemFactory¹¤³§
            DiskFileItemFactory factory = new DiskFileItemFactory();
            //2¡¢´´½¨Ò»¸öÎÄ¼þÉÏ´«½âÎöÆ÷
            ServletFileUpload upload = new ServletFileUpload(factory);
            //½â¾öÉÏ´«ÎÄ¼þÃûµÄÖÐÎÄÂÒÂë
            upload.setHeaderEncoding("UTF-8");
            //3¡¢ÅÐ¶ÏÌá½»ÉÏÀ´µÄÊý¾ÝÊÇ·ñÊÇÉÏ´«±íµ¥µÄÊý¾Ý
            if(!ServletFileUpload.isMultipartContent(request)){
                //°´ÕÕ´«Í³·½Ê½»ñÈ¡Êý¾Ý
                return;
            }
            //4¡¢Ê¹ÓÃServletFileUpload½âÎöÆ÷½âÎöÉÏ´«Êý¾Ý£¬½âÎö½á¹û·µ»ØµÄÊÇÒ»¸öList<FileItem>¼¯ºÏ£¬Ã¿Ò»¸öFileItem¶ÔÓ¦Ò»¸öForm±íµ¥µÄÊäÈëÏî


            List<FileItem> list = upload.parseRequest(request);
            for(FileItem item : list){
                //Èç¹ûfileitemÖÐ·â×°µÄÊÇÆÕÍ¨ÊäÈëÏîµÄÊý¾Ý
                if(item.isFormField()){
                    String name = item.getFieldName();
                    //½â¾öÆÕÍ¨ÊäÈëÏîµÄÊý¾ÝµÄÖÐÎÄÂÒÂëÎÊÌâ
                    String value = item.getString("UTF-8");
                    //value = new String(value.getBytes("iso8859-1"),"UTF-8");
                    System.out.println(name + "=" + value);
                    tempPath =tempPath + value;
                    System.out.println(tempPath);
                }else{//Èç¹ûfileitemÖÐ·â×°µÄÊÇÉÏ´«ÎÄ¼þ
                    //µÃµ½ÉÏ´«µÄÎÄ¼þÃû³Æ£¬
                    String filename = item.getName();
                    System.out.println(filename);
                    if(filename==null || filename.trim().equals("")){
                        continue;
                    }
                    //×¢Òâ£º²»Í¬µÄä¯ÀÀÆ÷Ìá½»µÄÎÄ¼þÃûÊÇ²»Ò»ÑùµÄ£¬ÓÐÐ©ä¯ÀÀÆ÷Ìá½»ÉÏÀ´µÄÎÄ¼þÃûÊÇ´øÓÐÂ·¾¶µÄ£¬Èç£º  c:\a\b\1.txt£¬¶øÓÐÐ©Ö»ÊÇµ¥´¿µÄÎÄ¼þÃû£¬Èç£º1.txt
                    //´¦Àí»ñÈ¡µ½µÄÉÏ´«ÎÄ¼þµÄÎÄ¼þÃûµÄÂ·¾¶²¿·Ö£¬Ö»±£ÁôÎÄ¼þÃû²¿·Ö
                    filename = filename.substring(filename.lastIndexOf("\\")+1);
                    //»ñÈ¡itemÖÐµÄÉÏ´«ÎÄ¼þµÄÊäÈëÁ÷
                    InputStream in = item.getInputStream();
                    //´´½¨Ò»¸öÎÄ¼þÊä³öÁ÷


                    String savePath = "D:\\Documents\\Homework\\Java\\Course Design\\Project\\web\\WEB-INF\\upload";
                    savePath = savePath+'\\'+tempPath;
                    System.out.println(savePath);
                    File file = new File(savePath);
                    //ÅÐ¶ÏÉÏ´«ÎÄ¼þµÄ±£´æÄ¿Â¼ÊÇ·ñ´æÔÚ
                    if (!file.exists() && !file.isDirectory()) {
                        System.out.println(savePath+"Ä¿Â¼²»´æÔÚ£¬ÐèÒª´´½¨");
                        //´´½¨Ä¿Â¼
                        file.mkdir();
                    }



                    FileOutputStream out = new FileOutputStream(savePath + "\\" + filename);

                    //´´½¨Ò»¸ö»º³åÇø
                    byte buffer[] = new byte[1024];
                    //ÅÐ¶ÏÊäÈëÁ÷ÖÐµÄÊý¾ÝÊÇ·ñÒÑ¾­¶ÁÍêµÄ±êÊ¶
                    int len = 0;
                    //Ñ­»·½«ÊäÈëÁ÷¶ÁÈëµ½»º³åÇøµ±ÖÐ£¬(len=in.read(buffer))>0¾Í±íÊ¾inÀïÃæ»¹ÓÐÊý¾Ý
                    while((len=in.read(buffer))>0){
                        //Ê¹ÓÃFileOutputStreamÊä³öÁ÷½«»º³åÇøµÄÊý¾ÝÐ´Èëµ½Ö¸¶¨µÄÄ¿Â¼(savePath + "\\" + filename)µ±ÖÐ
                        out.write(buffer, 0, len);
                    }
                    //¹Ø±ÕÊäÈëÁ÷
                    in.close();
                    //¹Ø±ÕÊä³öÁ÷
                    out.close();
                    //É¾³ý´¦ÀíÎÄ¼þÉÏ´«Ê±Éú³ÉµÄÁÙÊ±ÎÄ¼þ
                    item.delete();
                    message = "succeed";
                }
            }
        }catch (Exception e) {
            message= "fail";
            e.printStackTrace();

        }
        request.setAttribute("message",message);
        request.getRequestDispatcher("/WEB-INF/messagerefresh.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}