package himedia.myhome.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cookie/set")
public class SetCookieController extends HttpServlet {
	
	//	GET 방식 호출하면 Set-Cookie 명령을 응답
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charest=UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		out.println("<h1>Cookie 저장</h1>");
		//	testCookie
		Cookie c = new Cookie("testCookie", URLEncoder.encode("Servlet에서 쿠키 저장을 지시합니다. setCookie", "UTF-8"));
		
		c.setMaxAge(24 * 60 * 60);		//	24시간 쿠키 유지
		//	domain, path, expire 등 쿠키 구성 요소 설정 가능
		//	응답에 쿠키를 추가하여야 브라우저에 저장
		resp.addCookie(c);	//	쿠키 추가
		
		out.printf("<p>%s를 쿠키 이름 %s 로 저장합니다</p>", c.getValue(), c.getName());
		
	}
	
}
