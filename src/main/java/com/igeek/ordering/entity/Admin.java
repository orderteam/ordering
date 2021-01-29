package com.igeek.ordering.entity;

import java.util.Date;

/**
 * @version 1.0
 * @Description TODO
 * @Author chengb
 * @Date 2021/1/29 16:42
 */
public class Admin {
    private String id;
    private String adminname;
    private String password;
    private Date create_time;

    public Admin() {
    }

    public Admin(String id, String adminname, String password, Date create_time) {
        this.id = id;
        this.adminname = adminname;
        this.password = password;
        this.create_time = create_time;
    }

    /**
     * 获取
     * @return id
     */
    public String getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 获取
     * @return adminname
     */
    public String getAdminname() {
        return adminname;
    }

    /**
     * 设置
     * @param adminname
     */
    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    /**
     * 获取
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 获取
     * @return create_time
     */
    public Date getCreate_time() {
        return create_time;
    }

    /**
     * 设置
     * @param create_time
     */
    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public String toString() {
        return "Admin{id = " + id + ", adminname = " + adminname + ", password = " + password + ", create_time = " + create_time + "}";
    }
}
