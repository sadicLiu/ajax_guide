package com.ace.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by 刘洪宇 on 2016/11/13.
 */
@WebServlet(name = "AjaxServlet", urlPatterns = "/AjaxServlet")
public class AjaxServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String v1 = request.getParameter("value1");
        String v2 = request.getParameter("value2");

        String result = "result: value1 = " + v1 + ", value2 = " + v2;

        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        out.print(result);
        out.flush();
        out.close();
    }
}
