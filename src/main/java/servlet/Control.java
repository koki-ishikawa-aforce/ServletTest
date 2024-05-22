package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/jsp/control")
public class Control extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String[] magazines = request.getParameterValues("magazine");
		String isSendDocument = request.getParameter("document");
		List<String> magazineList = new ArrayList<>();
		for (String magazine : magazines) {
			magazineList.add(magazine);
		}
		request.setAttribute("magazines", magazineList);
		if (isSendDocument.equals("希望する")) {
			request.getRequestDispatcher("send-document.jsp")
				.forward(request, response);
		} else {
			request.getRequestDispatcher("not-send-document.jsp")
				.forward(request, response);
		}
	}

}
