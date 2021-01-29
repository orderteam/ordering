package com.igeek.ordering.entity;

/**
 * @version 1.0
 * @Description TODO
 * @Author chengb
 * @Date 2021/1/29 13:47
 */
public class Item {
    private int id;
    private String name;
    private double price;
    private String detail;
    private String pic;

    public Item() {
    }

    public Item(int id, String name, double price, String detail, String pic) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.detail = detail;
        this.pic = pic;
    }

    /**
     * 获取
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(int id) {
        this.id = id;
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
     * @return price
     */
    public double getPrice() {
        return price;
    }

    /**
     * 设置
     * @param price
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * 获取
     * @return detail
     */
    public String getDetail() {
        return detail;
    }

    /**
     * 设置
     * @param detail
     */
    public void setDetail(String detail) {
        this.detail = detail;
    }

    /**
     * 获取
     * @return pic
     */
    public String getPic() {
        return pic;
    }

    /**
     * 设置
     * @param pic
     */
    public void setPic(String pic) {
        this.pic = pic;
    }

    public String toString() {
        return "Item{id = " + id + ", name = " + name + ", price = " + price + ", detail = " + detail + ", pic = " + pic + "}";
    }
}
