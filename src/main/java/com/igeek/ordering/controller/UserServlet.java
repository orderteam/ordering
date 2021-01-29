package com.igeek.ordering.controller;

import com.igeek.ordering.service.UserService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @version 1.0
 * @Description TODO
 * @Author chengb
 * @Date 2021/1/29 15:24
 */
@WebServlet(name = "BaseServlet", urlPatterns = "/user")
public class UserServlet extends BaseServlet{

    private UserService service=new UserService();

    //用户登录
    protected void service(HttpServletRequest request, HttpServletResponse response){

    }

}
