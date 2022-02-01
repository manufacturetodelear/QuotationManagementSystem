/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quotation.pojos;

public class Order {
    
    private int orderId;
    private String orderDate;
    private String orderValue;
    private String category;
    private int productId;
    private int dealerId;
    private double taxAmount;
    private String destinationCountry;
    private String destinationState;
    private String destinationCity;

    /**
     * @return the orderId
     */
    public int getOrderId() {
        return orderId;
    }

    /**
     * @param orderId the orderId to set
     */
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    /**
     * @return the orderDate
     */
    public String getOrderDate() {
        return orderDate;
    }

    /**
     * @param orderDate the orderDate to set
     */
    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    /**
     * @return the orderValue
     */
    public String getOrderValue() {
        return orderValue;
    }

    /**
     * @param orderValue the orderValue to set
     */
    public void setOrderValue(String orderValue) {
        this.orderValue = orderValue;
    }

    /**
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * @return the productId
     */
    public int getProductId() {
        return productId;
    }

    /**
     * @param productId the productId to set
     */
    public void setProductId(int productId) {
        this.productId = productId;
    }

    /**
     * @return the dealerId
     */
    public int getDealerId() {
        return dealerId;
    }

    /**
     * @param dealerId the dealerId to set
     */
    public void setDealerId(int dealerId) {
        this.dealerId = dealerId;
    }

    /**
     * @return the taxAmount
     */
    public double getTaxAmount() {
        return taxAmount;
    }

    /**
     * @param taxAmount the taxAmount to set
     */
    public void setTaxAmount(double taxAmount) {
        this.taxAmount = taxAmount;
    }

    /**
     * @return the destinationCountry
     */
    public String getDestinationCountry() {
        return destinationCountry;
    }

    /**
     * @param destinationCountry the destinationCountry to set
     */
    public void setDestinationCountry(String destinationCountry) {
        this.destinationCountry = destinationCountry;
    }

    /**
     * @return the destinationState
     */
    public String getDestinationState() {
        return destinationState;
    }

    /**
     * @param destinationState the destinationState to set
     */
    public void setDestinationState(String destinationState) {
        this.destinationState = destinationState;
    }

    /**
     * @return the destinationCity
     */
    public String getDestinationCity() {
        return destinationCity;
    }

    /**
     * @param destinationCity the destinationCity to set
     */
    public void setDestinationCity(String destinationCity) {
        this.destinationCity = destinationCity;
    }
    
}
