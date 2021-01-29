package com.igeek.ordering.entity;

import java.util.Date;

/**
 * @version 1.0
 * @Description TODO
 * @Author chengb
 * @Date 2021/1/29 13:40
 */
public class User {
    private String id;
    private String username;
    private String pwd;
    private String name;
    private String phone;
    private String email;
    private String sex;
    private Date birthday;
    private String address;
    private int state; //0--未激活 1已激活
    private String code;

    public User() {
    }

    public User(String id, String username, String pwd, String name, String phone, String email, String sex, Date birthday, String address, int state, String code) {
        this.id = id;
        this.username = username;
        this.pwd = pwd;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.sex = sex;
        this.birthday = birthday;
        this.address = address;
        this.state = state;
        this.code = code;
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
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 获取
     * @return pwd
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * 设置
     * @param pwd
     */
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    /**
     * 获取
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置
     * @param phone
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取
     * @return sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * 设置
     * @param sex
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * 获取
     * @return birthday
     */
    public Date getBirthday() {
        return birthday;
    }

    /**
     * 设置
     * @param birthday
     */
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    /**
     * 获取
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取
     * @return state
     */
    public int getState() {
        return state;
    }

    /**
     * 设置
     * @param state
     */
    public void setState(int state) {
        this.state = state;
    }

    /**
     * 获取
     * @return code
     */
    public String getCode() {
        return code;
    }

    /**
     * 设置
     * @param code
     */
    public void setCode(String code) {
        this.code = code;
    }

    public String toString() {
        return "User{id = " + id + ", username = " + username + ", pwd = " + pwd + ", name = " + name + ", phone = " + phone + ", email = " + email + ", sex = " + sex + ", birthday = " + birthday + ", address = " + address + ", state = " + state + ", code = " + code + "}";
    }
}
