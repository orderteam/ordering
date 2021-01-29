package com.igeek.ordering.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@WebServlet(name = "BaseServlet")
public class BaseServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取执行方法的名称
        String methodName = request.getParameter("method");
        Class<? extends BaseServlet> clazz = this.getClass();
        if(methodName!=null && !methodName.equals("")){
            try {
                Method method = clazz.getDeclaredMethod(methodName, request.getClass(), response.getClass());
                method.invoke(this,request,response);
            } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
                e.printStackTrace();
            }
        }
    }
}
