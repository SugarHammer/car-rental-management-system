package com.example.entity;

import javax.persistence.*;

@Table(name = "order_goods_rel")
public class OrderGoodsRel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 订单ID
     */
    @Column(name = "orderId")
    private Long orderId;

    /**
     * 汽车ID
     */
    @Column(name = "goodsId")
    private Long goodsId;

    /**
     * 汽车数量
     */
    private Integer count;

    /**
     * @return id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取订单ID
     *
     * @return order_id - 订单ID
     */
    public Long getOrderId() {
        return orderId;
    }

    /**
     * 设置订单ID
     *
     * @param orderId 订单ID
     */
    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    /**
     * 获取汽车ID
     *
     * @return goods_id - 汽车ID
     */
    public Long getGoodsId() {
        return goodsId;
    }

    /**
     * 设置汽车ID
     *
     * @param goodsId 汽车ID
     */
    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    /**
     * 获取汽车数量
     *
     * @return count - 汽车数量
     */
    public Integer getCount() {
        return count;
    }

    /**
     * 设置汽车数量
     *
     * @param count 汽车数量
     */
    public void setCount(Integer count) {
        this.count = count;
    }
}
