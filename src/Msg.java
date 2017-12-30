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
import java.util.Date;
import java.util.List;

public class Msg extends HttpServlet {
	List<String> msgs;
	int count;
	String objfile="";
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		objfile=request.getServletContext().getRealPath("/")+"msg\\Msg.obj";
		System.out.println(objfile);
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ServletContext application = request.getServletContext();
		HttpSession session=request.getSession();
		if(application.getAttribute("msgs")!=null){
			msgs=(List<String>)application.getAttribute("msgs");
		}else{
			msgs=new ArrayList();
			System.out.println("New");
		}
		count = msgs.size();
		String date = new Date().toLocaleString();
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String msg = request.getParameter("message");
		String number =  request.getParameter("number");
		String flag =  request.getParameter("flag");
		if (name == null || "".equals(name)) {
			name = "无标题";
		}
		if (title == null || "".equals(title)) {
			title = "无描述";
		}
		if (msg == null || "".equals(msg)) {
			System.out.println("sfsdf");
			request.getRequestDispatcher("/WEB-INF/msg/sub.jsp").forward(request,
					response);
		} 
		else {			
			count++;
			String tmsg = "&nbsp;&nbsp;&nbsp;"
					+ date + "<br><br>姓名：" + name + "<br>标题：" + title
					+ "<br>内容：" + msg;
			msgs.add(tmsg);
			
			saveMsgPane(objfile);			
			application.setAttribute("msgs", msgs);
			session.setAttribute("msg", tmsg);

			System.out.println("sdfhidshfidhf");

			request.getRequestDispatcher("/WEB-INF/msg/msg.jsp").forward(request, response);
		}
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
