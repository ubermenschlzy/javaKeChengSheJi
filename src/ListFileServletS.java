import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;


public class ListFileServletS extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //获取上传文件的目录
        String pdfPath="D:\\Documents\\Homework\\Java\\Course Design\\Project\\pdf\\";
        File pdfDir=new File(pdfPath);
        String[] a=pdfDir.list();
        ArrayList<String> liststring=new ArrayList<String>();
        Collections.sort(liststring);
        for(int i=0;i<a.length;i++){
            if(!a[i].equals("temp"))
                liststring.add(a[i]);
        }
        System.out.println(liststring.toString());
        String uploadFilePath = "D:\\Documents\\Homework\\Java\\Course Design\\Project\\pdf\\";
        System.out.println(uploadFilePath);
        //存储要下载的文件名
        Map<String,String> fileNameMap = new HashMap<String,String>();
        //递归遍历filepath目录下的所有文件和目录，将文件的文件名存储到map集合中
        for(String s:liststring) {
            listfile(new File(uploadFilePath+s), fileNameMap,s);//File既可以代表一个文件也可以代表一个目录
        }
        System.out.println(fileNameMap.size());
        fileNameMap=sortMapByKey(fileNameMap);
        //将Map集合发送到listfile.jsp页面进行显示
        System.out.println(fileNameMap.size());
        request.setAttribute("fileNameMap", fileNameMap);
        request.setAttribute("path",uploadFilePath);
        request.getRequestDispatcher("/WEB-INF/listfileS.jsp").forward(request, response);
    }

    public void listfile(File file,Map<String,String> map,String dir){
        //如果file代表的不是一个文件，而是一个目录
        if(!file.isFile()){
            //列出该目录下的所有文件和目录
            File files[] = file.listFiles();
            //遍历files[]数组
            for(File f : files){
                //递归
                listfile(f,map,dir);
            }
        }else{
            String realName = file.getName();
            if(ConnectMysql.checkPdf(realName,dir)) {
                String path=file.getPath();
                try {
                    File fr=new File(path+".txt");
                    String str=" ";
                    if(fr.exists()){
                        InputStreamReader isr = new InputStreamReader(new FileInputStream(fr), "UTF-8");
                        StringBuffer sbread = new StringBuffer();
                        while (isr.ready()) {
                            sbread.append((char) isr.read());
                        }
                        isr.close();
                        // 从构造器中生成字符串，并替换搜索文本
                        str = sbread.toString();

//                        FileInputStream in = new FileInputStream(fr);
//                        int size = in.available();
//                        byte[] buffer = new byte[size];
//                        in.read(buffer);
//                        in.close();
//                        str = new String(buffer, "utf-8");
                        System.out.println("check:"+str);
                    }
                    System.out.println("in:"+str.trim());
                    map.put(dir + "/" + realName+"/"+str.trim(),"" + ConnectMysql.rePdfnum(realName, dir));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
    public static Map<String, String> sortMapByKey(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return null;
        }

        Map<String, String> sortMap = new TreeMap<String, String>(
                new ListFileServlet.MapKeyComparator());

        sortMap.putAll(map);

        return sortMap;
    }
    static class MapKeyComparator implements Comparator<String>{

        @Override
        public int compare(String str1, String str2) {

            return str1.compareTo(str2);
        }
    }
    //    public static Map<String, String> sortMapByValue(Map<String, String> map) {
//        if (map == null || map.isEmpty()) {
//            return null;
//        }
//        Map<String, String> sortedMap = new LinkedHashMap<String, String>();
//        List<Map.Entry<String, String>> entryList = new ArrayList<Map.Entry<String, String>>(map.entrySet());
//        Collections.sort(entryList, new MapValueComparator());
//        Iterator<Map.Entry<String, String>> iter = entryList.iterator();
//        Map.Entry<String, String> tmpEntry = null;
//        while (iter.hasNext()) {
//            tmpEntry = iter.next();
//            sortedMap.put(tmpEntry.getKey(), tmpEntry.getValue());
//        }
//        return sortedMap;
//    }
//    public static class MapValueComparator implements Comparator<Map.Entry<String, String>> {
//        public int compare(Map.Entry<String, String> me1, Map.Entry<String, String> me2) {
//            return me1.getValue().compareTo(me2.getValue());
//        }
//    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}