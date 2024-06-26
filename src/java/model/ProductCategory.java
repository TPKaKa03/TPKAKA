

package model;


public class ProductCategory {
    private int categoryid;
    private String categoryname;

    public ProductCategory() {
    }

    public ProductCategory(int categoryid, String categoryname) {
        this.categoryid = categoryid;
        this.categoryname = categoryname;
    }

    public int getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(int categoryid) {
        this.categoryid = categoryid;
    }

    public String getCategoryname() {
        return categoryname;
    }

    public void setCategoryname(String categoryname) {
        this.categoryname = categoryname;
    }

    @Override
    public String toString() {
        return "ProductCategory{" + "categoryid=" + categoryid + ", categoryname=" + categoryname + '}';
    }

    
    
}
