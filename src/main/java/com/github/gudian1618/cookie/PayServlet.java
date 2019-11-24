package com.github.gudian1618.cookie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 负责对象购物车中的商品进行结算
 */

@WebServlet("/PayServlet")
public class PayServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("PayServlet.doGet()");
        // 1.获取请求中写带过来的cookie信息
        Cookie[] cs = request.getCookies();
        String prod = null;
        if (cs != null) {
            for (Cookie c : cs) {
                if ("prod".equals(c.getName())) {
                    prod = c.getValue();
                }
            }
        }
        // 2.对商品进行结算(模拟支付)
        PrintWriter out = response.getWriter();
        if (prod != null) {
            out.write("成功支付为{"+prod+"}支付了1000.0元...");
        } else {
            out.write("您好没有添加任何商品到购物车!");
        }
    }
}
