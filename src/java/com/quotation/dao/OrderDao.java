/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quotation.dao;

import com.quotation.core.ConnectionManager;
import com.quotation.pojos.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
    
    public List report() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<Order> orderList = new ArrayList<>();
        try {
            String sql = "SELECT order.orderId,\n" +
                        "    order.orderDate,\n" +
                        "    order.orderValue,\n" +
                        "    order.category,\n" +
                        "    order.productId,\n" +
                        "    order.dealerId,\n" +
                        "    order.taxAmount,\n" +
                        "    order.destinationCountry,\n" +
                        "    order.destinationState,\n" +
                        "    order.destinationCity\n" +
                        "FROM quotationmanagementsystem.order;";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Order order = new Order();
                order.setOrderId(rs.getInt("orderId"));
                order.setOrderDate(rs.getString("orderDate"));
                order.setOrderValue(rs.getString("orderValue"));
                order.setCategory(rs.getString("category"));
                order.setProductId(rs.getInt("productId"));
                order.setDealerId(rs.getInt("dealerId"));
                order.setTaxAmount(rs.getDouble("taxAmount"));
                order.setDestinationCountry(rs.getString("destinationCountry"));
                order.setDestinationState(rs.getString("destinationState"));
                order.setDestinationCity(rs.getString("destinationCity"));

                orderList.add(order);
            }
            return orderList;
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
