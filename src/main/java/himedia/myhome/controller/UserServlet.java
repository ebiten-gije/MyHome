package himedia.myhome.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/users")
public class UserServlet extends BaseServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//  a=joinform -> 가입폼 페이지로 FORWARD
		//	a=joinsuccess -> 가입 성공 페이지로 FORWARD
		String actionName = req.getParameter("a");
		
		if ("joinform".equals(actionName)) {
			//	가입 폼으로 Forward
			RequestDispatcher rd = 
					req.getRequestDispatcher("/WEB-INF/views/users/joinform.jsp");
			rd.forward(req, resp);
		} else if ("joinsuccess".equals(actionName)) {
			RequestDispatcher rd =
					req.getRequestDispatcher("/WEB-INF/views/users/joinsuccess.jsp");
			rd.forward(req, resp);
		} else {
			//	홈페이지로 리다이렉트
			resp.sendRedirect(req.getContextPath());
		}
	}

}
