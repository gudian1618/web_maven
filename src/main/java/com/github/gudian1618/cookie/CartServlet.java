package com.github.gudian1618.cookie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 负责将商品加入购物车(cookie)
 */

@WebServlet(name = "CartServlet")
public class CartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("CartServlet.doGet()");
        // 1.获取要加入购物车的商品信息(prod)

        // 2.创建cookie对象,将商品保存到cookie中

        // 3.将cookie发送给浏览器,让浏览器保存cookie信息

        // 4.做出响应


    }
}
