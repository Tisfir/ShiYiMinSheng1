package cn.atshiyi.domain;

import java.io.Serializable;

/**
 * @author L.N
 * @creat 2021-03-05-13:18
 * 产品类型
 */
public class Com_type implements Serializable {
    private Integer id;
    private String t_name;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    @Override
    public String toString() {
        return "Com_type{" +
                "id=" + id +
                ", t_name='" + t_name + '\'' +
                '}';
    }
}
