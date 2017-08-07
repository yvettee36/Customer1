package cn.itcast.web.controller;

import cn.itcast.domain.PageBean;
import cn.itcast.domain.QueryInfo;
import cn.itcast.service.BusinessService;
import cn.itcast.service.impl.BusinessServiceImpl;
import cn.itcast.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//处理用户分页请求
@WebServlet(name = "ListCustomerServlet", urlPatterns = "/servlet/ListCustomerServlet")
public class ListCustomerServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            QueryInfo info = WebUtils.request2Bean(request, QueryInfo.class);

            BusinessService service = new BusinessServiceImpl();
            PageBean pageBean = service.pageQuery(info);

            request.setAttribute("pageBean", pageBean);
            request.getRequestDispatcher("/WEB-INF/jsp/listcustomer.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "查看客户失败");
            request.getRequestDispatcher("/message.jsp").forward(request, response);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
