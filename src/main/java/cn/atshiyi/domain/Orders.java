package cn.atshiyi.domain;

import cn.atshiyi.utils.DateUtils;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-05-13:24
 * 订单表
 */
public class Orders implements Serializable {
    private Integer id;
    private String u_name;
    private String u_addr;
    private Date creat_time;
    private String creat_timestr;
    private Float cost;
    private String u_phone;
    private User user;
    private List<Commodity> commodities;

    public List<Commodity> getCommodities() {
        return commodities;
    }

    public void setCommodities(List<Commodity> commodities) {
        this.commodities = commodities;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getU_addr() {
        return u_addr;
    }

    public void setU_addr(String u_addr) {
        this.u_addr = u_addr;
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

    public Float getCost() {
        return cost;
    }

    public void setCost(Float cost) {
        this.cost = cost;
    }

    public String getU_phone() {
        return u_phone;
    }

    public void setU_phone(String u_phone) {
        this.u_phone = u_phone;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", u_name='" + u_name + '\'' +
                ", u_addr='" + u_addr + '\'' +
                ", creat_time=" + creat_time +
                ", creat_timestr='" + creat_timestr + '\'' +
                ", cost=" + cost +
                ", u_phone='" + u_phone + '\'' +
                ", user=" + user +
                ", commodities=" + commodities +
                '}';
    }
}
