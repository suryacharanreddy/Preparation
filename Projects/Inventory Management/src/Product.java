public class Product{
    private int id;
    private String name;
    private double price;
    private int quantity;
    private int reorderLevel;
    public Product(int id,String name,double price,int quantity,int reorderLevel){
        this.id=id;
        this.name=name;
        this.price=price;
        this.quantity=quantity;
        this.reorderLevel=reorderLevel;
    }
    public void displayProduct(){
        System.out.println("ProductId:"+id);
        System.out.println("ProductName:"+name);
        System.out.println("ProductPrice:"+price);
        System.out.println("ProductQuantity:"+quantity);
        System.out.println("ProductReorderLevel:"+reorderLevel);

        if(quantity<=reorderLevel){
            System.out.println("Status:Low Stock");
        }else{
            System.out.println("Status:In Stock");
        }
    }
}