

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.th.dao.loginDao;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		loginDao Dao = new loginDao();
		String id = request.getParameter("id");
		System.out.println(id);
		String pw = request.getParameter("pw");
		System.out.println(pw);
		boolean go = false;
		try {
			go = Dao.login(id, pw);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("go", go);
		if(go==true) {
			try {
				request.getRequestDispatcher("main.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}


}
