package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardDAO;
import model.BoardDTO;
import model.LoginDAO;
import model.UserDTO;
import vo.PageInfo;

@WebServlet("/cont")
public class DataController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		System.out.println("--- command " + command);
		if (command != null) {
			// ?
		}

		if (command.equals("citizen")) {
			citizen(request, response);
		} else if (command.equals("writeOK")) {
			writeOK(request, response);
		} else if (command.equals("login")) {
			login(request, response);
		} else if (command.equals("logout")) {
			logout(request, response);
		} else if (command.equals("newMember")) {
			newMember(request, response);
		} else if (command.equals("boardDetail")) {
			boardDetail(request, response);
		}else if (command.equals("search")) {
			search(request,response);
		}else if (command.equals("searchMore")) {
			searchMore(request,response);
		}
	}
	protected void searchMore(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String keyWord =request.getParameter("keyWord");
		System.out.println(request.getParameter("keyWord"));
		int page = 1;
		int limit = 10;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		ArrayList<BoardDTO> data = null;
		String url = "error.jsp";
		try {
			int listCount = BoardDAO.searchAllCount(keyWord);
			data = BoardDAO.searchAllMore(keyWord,page,limit);
			int maxPage = (int) ((double) listCount / limit + 0.95);
			int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
			int endPage = startPage + 10 - 1;

			if (endPage > maxPage)
				endPage = maxPage;
			PageInfo pageInfo = new PageInfo();
			pageInfo.setEndPage(endPage);
			pageInfo.setListCount(listCount);
			pageInfo.setMaxPage(maxPage);
			pageInfo.setPage(page);
			pageInfo.setStartPage(startPage);
			request.setAttribute("pageInfo", pageInfo);

			
			if (data.size() != 0) {
				request.setAttribute("datas", data);
				url = "BoardList/TotalMoreSearch.jsp";
			} else {
				request.setAttribute("message", "요청한 데이터는 없습니다.");
				url = "msg.jsp";
			}

		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", "죄송합니다, 재 요청해주세요");
		}
		// request에 저장하고 forward로 jsp로 이동해서 응답처리
		System.out.println("url : " + url);
		request.getRequestDispatcher(url).forward(request, response);
	}
	protected void search(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String keyWord =request.getParameter("keyWord");
		System.out.println(request.getParameter("keyWord"));
		
		

		ArrayList<BoardDTO> data = null;
		String url = "error.jsp";
		try {

			data = BoardDAO.searchAll(keyWord);
			int searchAllCount = BoardDAO.searchAllCount(keyWord);
			if (data.size() != 0) {
				request.setAttribute("datas", data);
				request.setAttribute("key", keyWord);
				request.setAttribute("searchAllCount", searchAllCount);
				url = "BoardList/TotalSearch.jsp";
			} else {
				request.setAttribute("message", "요청한 데이터는 없습니다.");
				url = "msg.jsp";
			}

		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", "죄송합니다, 재 요청해주세요");
		}
		// request에 저장하고 forward로 jsp로 이동해서 응답처리
		System.out.println("url : " + url);
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	
	protected void boardDetail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "error.jsp";
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		BoardDTO article = null;

		try {
			article = BoardDAO.getArticle(board_num);
			if (article != null) {
				request.setAttribute("article", article);
				url = "BoardList/article.jsp";
			} else {
				request.setAttribute("message", "요청한 데이터는 없습니다.");
				url = "msg.jsp";
			}

		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", "죄송합니다, 재 요청해주세요");
		}
		// request에 저장하고 forward로 jsp로 이동해서 응답처리
		request.getRequestDispatcher(url).forward(request, response);
	}

	protected void newMember(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserDTO bean = new UserDTO();
		bean.setId(request.getParameter("userID"));
		bean.setPasswd(request.getParameter("pwd1"));
		bean.setEmail(request.getParameter("email"));
		// bean.setName(request.getParameter("name"));
		String hp1 = request.getParameter("hp1");
		String hp2 = request.getParameter("hp2");
		String hp3 = request.getParameter("hp3");
		String hp = hp1 + "-" + hp2 + "-" + hp3;
		// bean.setHp(hp);
		bean.setAddr(request.getParameter("address"));

		// 데이터베이스 객체 선언 후 저장
		// 데이터베이스 객체 생성
		LoginDAO mdao = new LoginDAO();
		mdao.insertMember(bean); // 실제 데이터를 가지고있는 bean을 넘겨준다.
		RequestDispatcher dis = request.getRequestDispatcher("Main/main.jsp");
		dis.forward(request, response);

	}

	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(" getRequestURL 주소?? " + request.getRequestURL());
		System.out.println(" ContextPath() 주소?? " + request.getContextPath());
		System.out.println(" ContextPath() 주소?? " + request.getContextPath());
		UserDTO bean = new UserDTO();
		bean.setId(request.getParameter("id"));
		bean.setPasswd(request.getParameter("password"));
		System.out.println("아이디 : " + bean.getId() + "// 비밀번호 : " + bean.getPasswd());

		LoginDAO mdao = new LoginDAO();
		int result = mdao.loginCheck(bean);

		if (result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("sid", bean.getId());
			if(bean.getId().equals("admin")) request.getRequestDispatcher("index2.html").forward(request, response);
			else request.getRequestDispatcher("Main/main.jsp").forward(request, response);
			
		} else
			response.sendRedirect("loginForm.jsp");
	}

	protected void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		session = null;
		response.sendRedirect("Main/main.jsp");

	}

	protected void writeOK(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BoardDTO newBoard = new BoardDTO(5, request.getParameter("qestnTitle"), request.getParameter("qestnContent"),
				"작성자", "등록일", 1, 2, 3, 4, request.getParameter("write_id"));
		try {
			BoardDAO.insertBoard(newBoard);
			System.out.println("??");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		citizen(request, response);

	}

	protected void citizen(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int page = 1;
		int limit = 10;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		ArrayList<BoardDTO> data = null;
		String url = "error.jsp";
		try {
			int listCount = BoardDAO.getListCount();
			data = BoardDAO.getAll(page,limit);
			int maxPage = (int) ((double) listCount / limit + 0.95);
			int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
			int endPage = startPage + 10 - 1;

			if (endPage > maxPage)
				endPage = maxPage;
			PageInfo pageInfo = new PageInfo();
			pageInfo.setEndPage(endPage);
			pageInfo.setListCount(listCount);
			pageInfo.setMaxPage(maxPage);
			pageInfo.setPage(page);
			pageInfo.setStartPage(startPage);
			request.setAttribute("pageInfo", pageInfo);

			
			if (data.size() != 0) {
				request.setAttribute("datas", data);
				url = "BoardList/citizenOpinionList.jsp";
			} else {
				request.setAttribute("message", "요청한 데이터는 없습니다.");
				url = "msg.jsp";
			}

		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", "죄송합니다, 재 요청해주세요");
		}
		// request에 저장하고 forward로 jsp로 이동해서 응답처리
		System.out.println("url : " + url);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
