package cn.itcast.web.controller;

import cn.itcast.domain.Customer;
import cn.itcast.service.BusinessService;
import cn.itcast.service.impl.BusinessServiceImpl;
import cn.itcast.utils.Globals;
import cn.itcast.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddCustomerServlet", urlPatterns = "/servlet/AddCustomerServlet")
public class AddCustomerServlet extends HttpServlet {
    //给用户提供一个添加界面
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("genders", Globals.genders);
        request.setAttribute("preferences", Globals.preferences);
        request.setAttribute("types", Globals.types);
        request.getRequestDispatcher("/WEB-INF/jsp/addcustomer.jsp").forward(request, response);
    }

    //处理用户的添加请求
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");
            //默认表单已经校验，把数据封装到Customer对象中

            Customer customer = WebUtils.request2Bean(request, Customer.class);
            customer.setId(WebUtils.genarateID());
            BusinessService service = new BusinessServiceImpl();
            service.addCustomer(customer);

            request.setAttribute("message", "添加成功！");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "添加失败！");
        }
            request.getRequestDispatcher("/message.jsp").forward(request, response);
    }

}
