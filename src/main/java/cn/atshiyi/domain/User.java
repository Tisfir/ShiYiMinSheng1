package cn.atshiyi.domain;

import cn.atshiyi.utils.DateUtils;

import java.io.Serializable;
import java.util.Date;

/**
 * @author L.N
 * @creat 2021-03-05-12:51
 * 用户表
 */
public class User implements Serializable {
    private Integer id;
    private String username;
    private String password;
    private String phone;
    private Date creat_time;
    private String creat_timestr;  //用于格式化数据的展示
    private String gender;
    private String email;
    private String pic;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }


    public Date getCreat_time() {
        return creat_time;
    }

    public void setCreat_time(Date creat_time) {
        this.creat_time = creat_time;
    }

    public String getCreat_timestr() {
        if (creat_time !=null){
            creat_timestr=DateUtils.dateToString(creat_time,"yyyy-MM-dd HH:mm:ss");
        }
        return creat_timestr;
    }

    public void setCreat_timestr(String creat_timestr) {
        this.creat_timestr = creat_timestr;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", creat_time=" + creat_time +
                ", creat_timestr='" + creat_timestr + '\'' +
                ", gender='" + gender + '\'' +
                ", email='" + email + '\'' +
                ", pic='" + pic + '\'' +
                '}';
    }
}
