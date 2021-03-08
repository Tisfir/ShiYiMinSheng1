package cn.atshiyi.domain;

import java.io.Serializable;

/**
 * @author L.N
 * @creat 2021-03-05-13:08
 * 产品
 */
public class Commodity implements Serializable {
    private Integer c_id;
    private String c_name;
    private String pic;
    private Float price;
    private Integer num;
    private Com_type com_type;

    public Com_type getCom_type() {
        return com_type;
    }

    public void setCom_type(Com_type com_type) {
        this.com_type = com_type;
    }

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "Commodity{" +
                "c_id=" + c_id +
                ", c_name='" + c_name + '\'' +
                ", pic='" + pic + '\'' +
                ", price=" + price +
                ", num=" + num +
                '}';
    }
}
