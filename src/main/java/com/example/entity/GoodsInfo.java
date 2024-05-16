package com.example.entity;

import javax.persistence.*;
import java.util.List;

@Table(name = "goods_info")
public class GoodsInfo {
    /**
     * 主键
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 汽车名称
     */
    private String name;

    /**
     * 汽车描述
     */
    private String description;

    /**
     * 汽车图片id
     */
    @Column(name = "fileIds")
    private String fileIds;

    /**
     * 汽车价格
     */
    private Double price;

    /**
     * 汽车库存
     */
    private Integer count;

    /**
     * 汽车销量
     */
    private Integer sales;

    /**
     * 汽车点赞数
     */
    private Integer hot;

    /**
     * 所属类别
     */
    @Column(name = "typeId")
    private Long typeId;
    /**
     * 所属用户
     */
    @Column(name = "userId")
    private Long userId;

    @Column(name = "level")
    private Integer level;

    /**
     * 油费
     */
    private Double discount;

    @Column(name = "recommend")
    private String recommend = "否";

    @Transient
    private String typeName;

    @Transient
    private String userName;

    @Transient
    private List<Long> fileList;

    /**
     * 汽车评价状态
     */
    @Transient
    private String commentStatus;

    /**
     * 获取主键
     *
     * @return id - 主键
     */
    public Long getId() {
        return id;
    }

    /**
     * 设置主键
     *
     * @param id 主键
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取汽车名称
     *
     * @return name - 汽车名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置汽车名称
     *
     * @param name 汽车名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取汽车描述
     *
     * @return description - 汽车描述
     */
    public String getDescription() {
        return description;
    }

    /**
     * 设置汽车描述
     *
     * @param description 汽车描述
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * 获取汽车价格
     *
     * @return price - 汽车价格
     */
    public Double getPrice() {
        return price;
    }

    /**
     * 设置汽车价格
     *
     * @param price 汽车价格
     */
    public void setPrice(Double price) {
        this.price = price;
    }

    /**
     * 获取汽车库存
     *
     * @return count - 汽车库存
     */
    public Integer getCount() {
        return count;
    }

    /**
     * 设置汽车库存
     *
     * @param count 汽车库存
     */
    public void setCount(Integer count) {
        this.count = count;
    }

    /**
     * 获取汽车销量
     *
     * @return sales - 汽车销量
     */
    public Integer getSales() {
        return sales;
    }

    /**
     * 设置汽车销量
     *
     * @param sales 汽车销量
     */
    public void setSales(Integer sales) {
        this.sales = sales;
    }

    /**
     * 获取汽车点赞数
     *
     * @return hot - 汽车点赞数
     */
    public Integer getHot() {
        return hot;
    }

    /**
     * 设置汽车点赞数
     *
     * @param hot 汽车点赞数
     */
    public void setHot(Integer hot) {
        this.hot = hot;
    }

    /**
     * 获取所属类别
     *
     * @return type_id - 所属类别
     */
    public Long getTypeId() {
        return typeId;
    }

    /**
     * 设置所属类别
     *
     * @param typeId 所属类别
     */
    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }

    /**
     * 获取所属用户
     *
     * @return user_id - 所属用户
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * 设置所属用户
     *
     * @param userId 所属用户
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getRecommend() {
        return recommend;
    }

    public void setRecommend(String recommend) {
        this.recommend = recommend;
    }

    public String getFileId() {
        return fileIds;
    }

    public void setFileId(String fileIds) {
        this.fileIds = fileIds;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getFileIds() {
        return fileIds;
    }

    public void setFileIds(String fileIds) {
        this.fileIds = fileIds;
    }

    public List<Long> getFileList() {
        return fileList;
    }

    public void setFileList(List<Long> fileList) {
        this.fileList = fileList;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public String getCommentStatus() {
        return commentStatus;
    }

    public void setCommentStatus(String commentStatus) {
        this.commentStatus = commentStatus;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }
}
