package model;

public class CartProduct {
    private String image;
    private String name;
    private double price;
    private int mount;
    private double total;

    public CartProduct() {
    }

    public CartProduct(String image, String name, double price, int mount, double total) {
        this.image = image;
        this.name = name;
        this.price = price;
        this.mount = mount;
        this.total = total;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getMount() {
        return mount;
    }

    public void setMount(int mount) {
        this.mount = mount;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "CartProduct{" +
                "image='" + image + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", mount=" + mount +
                ", total=" + total +
                '}';
    }
}
