class Product
{
    public ProductId:number;
    public ProductName:string;
    public UnitPrice:number;
    public Qty:number;

    constructor(ProductId:number, ProductName:string = 'EarPhones', UnitPrice:number = 300, Qty:number=3)
    {
        this.ProductId = ProductId;
        this.UnitPrice = UnitPrice;
        this.ProductName = ProductName;
        this.Qty = Qty;
    }

    public getTotal():number
    {
        return this.Qty * this.UnitPrice;
    }

    public showDetails()
    {
        console.log(`Product-ID : ${this.ProductId}, Product Name : ${this.ProductName}, Product Price : ${this.UnitPrice}, Product Quantity : ${this.Qty}`);
    }
}

const p = new Product(2);
console.log(p.getTotal());
p.showDetails();