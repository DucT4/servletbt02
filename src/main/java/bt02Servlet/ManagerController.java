package bt02Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "managerControler", urlPatterns = { "/manager" })
public class ManagerController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> listProduct = new ArrayList<>();
        listProduct.add(new Product("Đinẹ thoại Nokia", 20, 150000));
        listProduct.add(new Product("Điện thoại Samsung", 50, 550000));
		req.setAttribute("list", listProduct);
		req.getRequestDispatcher("product.jsp").forward(req, resp);
	}
}
