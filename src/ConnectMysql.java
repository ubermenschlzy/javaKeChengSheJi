import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;

/**
 * Created by dingke on 2017/12/12.
 */
class ConnectMysql {
    private static Connection con=getCon();
    ConnectMysql(){

    }
    private static Connection getCon(){
        Properties properties = new Properties();
        InputStream input = null;
        Connection con=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            String workdir=System.getProperty("user.dir");
            System.out.println(workdir);
          //  input = new FileInputStream("/Users/dingke/Desktop/final/svn/justjsp/src/" +"config.properties");//加载Java项目根路径下的配置文件
            input = new FileInputStream("D:\\Files\\Java\\Course Design\\" +"config.properties");
            properties.load(input);
            String url=properties.getProperty("url");
            String user=properties.getProperty("user");
            String password=properties.getProperty("password");
            con = DriverManager.getConnection(url,user,password);
            input.close();

        } catch (IOException | SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        if(con==null)
            System.out.println("wrong property,please get default");
        return con;
    }
    public static void init() throws SQLException {
        String CreateUser = " create table User (" +
                "id VARCHAR(40) ," +
                "name VARCHAR(40) ," +
                "type VARCHAR(10)," +
                "password VARCHAR(40) ," +
                "primary key (id))";
        String CreatePdf = " create table pdf (" +
                "name VARCHAR(40) ," +
                "uptime VARCHAR(40) ," +
                "downnum int," +
                "chapter int," +
                "primary key ( name , chapter ))";
        String CreateFile = " create table file (" +
                "name VARCHAR(40) ," +
                "type VARCHAR(40) ," +
                "downnum int ," +
                "size int ," +
                "primary key (name,type))";
        ArrayList<String> sql=new ArrayList<String>();
        sql.add(CreateUser);
        sql.add(CreatePdf);
        sql.add(CreateFile);
        try {
            for (String s : sql) {
                PreparedStatement stmt = con.prepareStatement(s);
                int rs = stmt.executeUpdate(s);
            }
        }
        catch (SQLException e){
            System.out.println(e.getMessage());
        }

    }
    static boolean addUser(String id,String name ,String type,String password){
        String sql="insert into User(id,name,type,password) " +
                "values( \""+id+"\",\""+name+"\" , \" "+type+"\" , \""+password+"\" )";
        System.out.println(sql);
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
            return false;
        }
        return true;
    }
    static boolean addPdf(String name,String uptime ,String downnum,String chapter){
        String sql="insert into pdf(name,uptime,downnum,chapter) " +
                "values( \""+name+"\",\" "+uptime+"\" , \""+downnum+"\" , \""+chapter+"\" )";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
            return false;
        }
        return true;
    }
    static boolean addFile(String name,String type ,String downnum,String size){
        String sql="insert into file(name,type,downnum,size) " +
                "values( \""+name+"\",\""+type+"\" , \""+downnum+"\" , \""+size+"\" )";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
            return false;
        }
        return true;
    }
    static boolean IsExistedId(String id){
        String sql="select id from User where " +
        "id= \""+id+"\"";
        PreparedStatement stmt = null;
        try {
            stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.next())
                return false;
            else
                return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    static String GetNameById(String id){
        String sql="select name from User where " +
                "id= \""+id+"\"";
        PreparedStatement stmt = null;
        String name = null;
        try {
            stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.next()){
                name = rs.getString(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return name;
    }

    static String GetTypeById(String id){
        String sql="select type from User where " +
                "id= \""+id+"\"";
        PreparedStatement stmt = null;
        String name = null;
        System.out.println(sql);
        try {
            stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.next()){
                name = rs.getString(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(name);
        return name;
    }

    static boolean checkUser(String id,String password){
        String sql="select id,password from User where " +
                "id= "+id+
                " and password= \""+password+"\"";
        PreparedStatement stmt = null;
        try {
            stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery(sql);
            ResultSetMetaData rsm=rs.getMetaData();
            if(rsm != null)//change
                return true;
            else
                return false;
            //return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    static boolean checkPdf(String name,String chapter){
        String sql="select name,chapter from Pdf where " +
                "name= \""+name+
                "\" and chapter= \""+chapter+"\"";
        PreparedStatement stmt = null;
        try {
            stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery(sql);
            ResultSetMetaData rsm=rs.getMetaData();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    static boolean checkFile(String name,String type){
        String sql="select id,password from File where " +
                "name= \""+name+
                "\" and type= \""+type+"\"";
        PreparedStatement stmt = null;
        try {
            stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery(sql);
            ResultSetMetaData rsm=rs.getMetaData();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    static boolean deleteUser(String id){
        String sql="delete from User where " +
                "id= "+id;
        PreparedStatement stmt = null;
        try {
            stmt = con.prepareStatement(sql);
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    static boolean deletePdf(String name,String chapter){
        String sql="delete from Pdf where " +
                "name= \""+name+
                "\" and type= \""+chapter+"\"";
        PreparedStatement stmt = null;
        try {
            stmt = con.prepareStatement(sql);
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    static boolean deleteFile(String name,String type){
        String sql="delete from File where " +
                "name= \""+name+
                "\" and type= \""+type+"\"";
        PreparedStatement stmt = null;
        try {
            stmt = con.prepareStatement(sql);
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    static boolean updatePdf(String name,String chapter){
        String sql="update Pdf set downnum=downnum+1 where " +
                "name= \""+name+
                "\" and chapter= \""+chapter+"\"";
        PreparedStatement stmt = null;
        System.out.println();
        try {
            stmt = con.prepareStatement(sql);
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    static boolean updateFile(String name,String type){
        String sql="update File set downnum=downnum+1 where " +
                "name= \""+name+
                "\" and type= \""+type+"\"";
        PreparedStatement stmt = null;
        try {
            stmt = con.prepareStatement(sql);
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    static int rePdfnum(String name,String chapter){
        String sql="select downnum from Pdf where " +
                "name= \""+name+
                "\" and chapter= \""+chapter+"\"";
        PreparedStatement stmt = null;
        System.out.println("this:"+sql);
        try {
            stmt = con.prepareStatement(sql);
            ResultSet rs=stmt.executeQuery(sql);
            if(!rs.next())
                return -1;
            return Integer.valueOf(rs.getString(1));
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return -1;
    }




}
