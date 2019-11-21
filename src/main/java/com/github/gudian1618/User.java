package com.github.gudian1618;

/**
 * @author gudian1618
 * @version 1.0
 * @date 2019/11/20 7:13 下午
 * 类:表示一类信息
 * 对象:用于表示某一个具体的信息
 */

public class User {
    private String name;
    private Integer age;
    private String addr;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public User() {
    }


}
