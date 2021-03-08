package cn.atshiyi.domain;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

/**
 * @author L.N
 * @creat 2021-03-05-13:19
 *
 * 购物车表
 */
public class Cart implements Serializable {
    private Integer id;
    private Integer num;
    private Float cost;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }


    public Float getCost() {
        return cost;
    }

    public void setCost(Float cost) {
        this.cost = cost;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", num=" + num +
                ", cost=" + cost +
                '}';
    }
}
