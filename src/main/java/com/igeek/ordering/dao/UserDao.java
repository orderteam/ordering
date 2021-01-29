package com.igeek.ordering.dao;

import com.igeek.ordering.entity.User;

import java.sql.SQLException;

/**
 * @version 1.0
 * @Description TODO
 * @Author chengb
 * @Date 2021/1/29 13:39
 */
public class UserDao extends BaseDao<User> {

    //根据用户名和密码查询用户
    public User selectOne(String username,String password) throws SQLException {
        String sql="select * from users where username= ? and pwd= ?";
        User user = this.getBean(sql, User.class, username, password);
        return user;
    }
}
