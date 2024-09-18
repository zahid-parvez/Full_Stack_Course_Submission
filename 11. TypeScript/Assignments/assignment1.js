var Product = /** @class */ (function () {
    function Product(ProductId, ProductName, UnitPrice, Qty) {
        if (ProductName === void 0) { ProductName = 'EarPhones'; }
        if (UnitPrice === void 0) { UnitPrice = 300; }
        if (Qty === void 0) { Qty = 3; }
        this.ProductId = ProductId;
        this.UnitPrice = UnitPrice;
        this.ProductName = ProductName;
        this.Qty = Qty;
    }
    Product.prototype.getTotal = function () {
        return this.Qty * this.UnitPrice;
    };
    Product.prototype.showDetails = function () {
        console.log("Product-ID : ".concat(this.ProductId, ", Product Name : ").concat(this.ProductName, ", Product Price : ").concat(this.UnitPrice, ", Product Quantity : ").concat(this.Qty));
    };
    return Product;
}());
var p = new Product(2);
console.log(p.getTotal());
p.showDetails();
