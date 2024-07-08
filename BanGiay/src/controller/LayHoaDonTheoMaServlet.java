package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import businessLogic.OrderBL;
import businessLogic.ProductBL;
import javaBean.Order;
import javaBean.Product;

/**
 * Servlet implementation class LayHoaDonTheoMaServlet
 */
@WebServlet({"/LayHoaDonTheoMaServlet","/layhoadontheoma.html" })
public class LayHoaDonTheoMaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LayHoaDonTheoMaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		int mahoadon = Integer.parseInt(request.getParameter("mahoadon"));
		
		List<Order> ordertheoma = OrderBL.LayHoaDonTheoMa(mahoadon);
		request.setAttribute("order", ordertheoma);
		
		request.getRequestDispatcher("index.html?ordertheoma=1").forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
