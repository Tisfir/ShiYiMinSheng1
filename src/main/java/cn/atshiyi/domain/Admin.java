package cn.atshiyi.domain;

import java.io.Serializable;

/**
 * @author L.N
 * @creat 2021-03-05-12:58
 *
 * 管理员表
 */
public class Admin implements Serializable {
    private Integer id;
    private String admin_name;
    private String admin_password;
    private String admin_phone;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAdmin_name() {
        return admin_name;
    }

    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
    }

    public String getAdmin_password() {
        return admin_password;
    }

    public void setAdmin_password(String admin_password) {
        this.admin_password = admin_password;
    }

    public String getAdmin_phone() {
        return admin_phone;
    }

    public void setAdmin_phone(String admin_phone) {
        this.admin_phone = admin_phone;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", admin_name='" + admin_name + '\'' +
                ", admin_password='" + admin_password + '\'' +
                ", admin_phone='" + admin_phone + '\'' +
                '}';
    }
}
