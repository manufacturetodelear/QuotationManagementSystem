/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quotation.dao;

import com.quotation.core.ConnectionManager;
import com.quotation.pojos.Quotation;
import com.quotation.pojos.Quotation1;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lenovo
 */
public class QuotationDao {

    public static void saveQuotation(Quotation quotation) {
        ResultSet rs = null;
        Connection con = null;
        Date date=java.sql.Date.valueOf(quotation.getDate());
        try {
            con = ConnectionManager.getConnection();
            String sql = "INSERT INTO quotationmanagementsystem.quotation\n"
                    + "(dealerId,\n"
                    + "productCategory,\n"
                    + "units,\n"
                    + "cgst,\n"
                    + "raisedAmount,\n"
                    + "discountOffers,\n"
                    + "fianlAmount,\n"
                    + "date,\n"
                    + "status,\n"
                    + "sgst)\n"
                    + "VALUES\n"
                    + "(?,?,?,?,?,?,?,?,?,?);";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, quotation.getDealerId());
            ps.setString(2, quotation.getProductCategory());
            ps.setInt(3, quotation.getUnits());
            ps.setDouble(4, quotation.getCgst());
            ps.setDouble(5, quotation.getRaisedAmount());
            ps.setDouble(6, quotation.getDiscountOffers());
            ps.setDouble(7, quotation.getFnalAmount());
            ps.setDate(8, date);
            ps.setString(9, quotation.getStatus());
            ps.setDouble(10, quotation.getSgst());
            int i=ps.executeUpdate();
            System.out.println("Value of i: "+i);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
       // for showing quotation
    public List report() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<Quotation1> quotationList = new ArrayList<>();
        try {
            String sql = "SELECT quotation.quotationId,\n"
                    + "    quotation.dealerId,\n"
                    + "    quotation.productCategory,\n"
                    + "    quotation.units,\n"
                    + "    quotation.cgst,\n"
                    + "    quotation.raisedAmount,\n"
                    + "    quotation.discountOffers,\n"
                    + "    quotation.fianlAmount,\n"
                    + "    quotation.date,\n"
                    + "    quotation.status,\n"
                    + "    quotation.sgst\n"
                    + "FROM quotationmanagementsystem.quotation";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Quotation1 quotation = new Quotation1();
                quotation.setQuotationId(rs.getInt("quotationId"));
                quotation.setDealerId(rs.getInt("dealerId"));
                quotation.setProductCategory(rs.getString("productCategory"));
                quotation.setUnits(rs.getInt("units"));
                quotation.setCgst(rs.getDouble("cgst"));
                quotation.setRaisedAmount(rs.getDouble("raisedAmount"));
                quotation.setDiscountOffers(rs.getDouble("discountOffers"));
                quotation.setFianlAmount(rs.getDouble("fianlAmount"));
                quotation.setDate(rs.getDate("date"));
                quotation.setStatus(rs.getString("status"));
                quotation.setSgst(rs.getDouble("sgst"));
                

                quotationList.add(quotation);
            }
            return quotationList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
}
