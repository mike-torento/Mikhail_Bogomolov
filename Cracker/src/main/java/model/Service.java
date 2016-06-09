package model;

import java.math.BigDecimal;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author miket_000
 */
public class Service {

    private Long id;
    private String name;
    private BigDecimal price;
    private String info;

    public Service(String name, BigDecimal price, String info) {
        this.name = name;
        this.price = price;
        this.info = info;
    }
    public Service(){}

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

    public String getInfo() {
        return info;
    }
    public void setInfo(String info) {
        this.info = info;
    }
    
}
