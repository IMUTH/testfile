

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.th.dao.JoinmemberDao;

@WebServlet("/JoinmemberServlet")
public class JoinmemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JoinmemberDao Dao = new JoinmemberDao();
		
		String id = request.getParameter("id");
		System.out.println(id);
		String pw = request.getParameter("pw");
		System.out.println(pw);
		String name = request.getParameter("name");
		System.out.println(name);
		Dao.join(id, pw, name);
		System.out.println("asdf");
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
		
	}


}
