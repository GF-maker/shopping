package com.qdu.pojo;

public class Product  implements java.io.Serializable {

     private String productId;
     private String productName;
     private Integer productPrice;

      private String productDetil;
     private String productUnit;
     private Integer productStock;
       private String productimage;
     private String productdiscrib;
     
     
     
     
    public Product() {
    }

	
//    public Product(String productId, String productName) {
//        this.productId = productId;
//        this.productName = productName;
//    }

    public Product(String productId, String productName, Integer productPrice, String productDetil, String productUnit, Integer productStock, String productimage, String productdiscrib) {
        this.productId = productId;
        this.productName = productName;
        this.productPrice = productPrice;
        
        this.productDetil = productDetil;
        this.productUnit = productUnit;
        this.productStock = productStock;
        this.productimage = productimage;
        this.productdiscrib = productdiscrib;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Integer productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductDetil() {
        return productDetil;
    }

    public void setProductDetil(String productDetil) {
        this.productDetil = productDetil;
    }

    public String getProductUnit() {
        return productUnit;
    }

    public void setProductUnit(String productUnit) {
        this.productUnit = productUnit;
    }

    public Integer getProductStock() {
        return productStock;
    }

    public void setProductStock(Integer productStock) {
        this.productStock = productStock;
    }

    public String getProductimage() {
        return productimage;
    }

    public void setProductimage(String productimage) {
        this.productimage = productimage;
    }

    public String getProductdiscrib() {
        return productdiscrib;
    }

    public void setProductdiscrib(String productdiscrib) {
        this.productdiscrib = productdiscrib;
    }
   
}


