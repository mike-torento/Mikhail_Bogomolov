/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.math.BigDecimal;
import java.util.List;

/**
 *
 * @author miket_000
 */
public class PackageServices {
    private Long id;
    private String name;
    private BigDecimal price;
    private List<Service> serviceList;

    public PackageServices(String name, BigDecimal price, List<Service> serviceList) {
        this.name = name;
        this.price = price;
        this.serviceList = serviceList;
    }

    public PackageServices(){}
    
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }
    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public List<Service> getServiceList() {
        return serviceList;
    }
    public void setServiceList(List<Service> serviceList) {
        this.serviceList = serviceList;
    }
    
    
}
