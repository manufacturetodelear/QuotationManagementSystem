/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quotation.pojos;

import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author Lenovo
 */
public class Quotation {
    private int quotationId;
    private int dealerId;
    private String productCategory;
    private LocalDate date;
    private int units;
    private double sgst;
    private double cgst;
    private double raisedAmount;
    private double discountOffers;
    private double fnalAmount;
    private String status;

    /**
     * @return the quotationId
     */
    public int getQuotationId() {
        return quotationId;
    }

    /**
     * @param quotationId the quotationId to set
     */
    public void setQuotationId(int quotationId) {
        this.quotationId = quotationId;
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
     * @return the productCategory
     */
    public String getProductCategory() {
        return productCategory;
    }

    /**
     * @param productCategory the productCategory to set
     */
    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    /**
     * @return the date
     */
    public LocalDate getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(LocalDate date) {
        this.date = date;
    }

    /**
     * @return the units
     */
    public int getUnits() {
        return units;
    }

    /**
     * @param units the units to set
     */
    public void setUnits(int units) {
        this.units = units;
    }

    
    

    /**
     * @return the raisedAmount
     */
    public double getRaisedAmount() {
        return raisedAmount;
    }

    /**
     * @param raisedAmount the raisedAmount to set
     */
    public void setRaisedAmount(double raisedAmount) {
        this.raisedAmount = raisedAmount;
    }

    /**
     * @return the discountOffers
     */
    public double getDiscountOffers() {
        return discountOffers;
    }

    /**
     * @param discountOffers the discountOffers to set
     */
    public void setDiscountOffers(double discountOffers) {
        this.discountOffers = discountOffers;
    }

    /**
     * @return the fnalAmount
     */
    public double getFnalAmount() {
        return fnalAmount;
    }

    /**
     * @param fnalAmount the fnalAmount to set
     */
    public void setFnalAmount(double fnalAmount) {
        this.fnalAmount = fnalAmount;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the sgst
     */
    public double getSgst() {
        return sgst;
    }

    /**
     * @param sgst the sgst to set
     */
    public void setSgst(double sgst) {
        this.sgst = sgst;
    }

    /**
     * @return the cgst
     */
    public double getCgst() {
        return cgst;
    }

    /**
     * @param cgst the cgst to set
     */
    public void setCgst(double cgst) {
        this.cgst = cgst;
    }
}
