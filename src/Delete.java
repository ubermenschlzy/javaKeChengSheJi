import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

public class Delete extends HttpServlet {
	List<String> msgs;
	int count;
	String objfile="";
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ID = request.getParameter("ID");
		int id = Integer.valueOf(ID);
		String num = request.getParameter("numb");
		int index = Integer.valueOf(num);
		
		objfile=request.getServletContext().getRealPath("/")+"msg\\Msg.obj";
		System.out.println(objfile);
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		ServletContext application = request.getServletContext();
		HttpSession session=request.getSession();
		
		if(application.getAttribute("msgs")!=null){
			msgs=(List<String>)application.getAttribute("msgs");
		}
		else{
			msgs=new ArrayList();
			System.out.println("New");
		}
		count = msgs.size();
		
		//int ID = (int)request.getAttribute("ID");
		//String flag =  (String)request.getAttribute("flag");
		//int number =  (int)request.getAttribute("number");
	//	int index = Integer.valueOf(number.trim());
		//int ID = (int)request.getAttribute("ID");
		
		System.out.println(index);
		msgs.remove(index);
		
		saveMsgPane(objfile);
		application.setAttribute("msgs", msgs);
		request.getRequestDispatcher("/msg/deleteinform.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doGet(req, resp);
	}

	public void saveMsgPane(String filename) {
		try {
			saveObject(filename, msgs);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void saveObject(String filename, Object obj) throws IOException {
		File f = new File(filename);
		if (!f.exists()) {
			f.createNewFile();
		}
		FileOutputStream fos = new FileOutputStream(f);
		ObjectOutputStream oos = new ObjectOutputStream(fos);
		oos.writeObject(obj);
		fos.close();
		oos.close();
	}
	

}
