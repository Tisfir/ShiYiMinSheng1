package cn.atshiyi.domain;

/**
 * @author L.N
 * @creat 2021-03-08-14:39
 */
public class Orders_commodity {
    private Integer order_id;
    private Integer com_id;

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public Integer getCom_id() {
        return com_id;
    }

    public void setCom_id(Integer com_id) {
        this.com_id = com_id;
    }

    @Override
    public String toString() {
        return "Orders_commodity{" +
                "order_id=" + order_id +
                ", com_id=" + com_id +
                '}';
    }
}
