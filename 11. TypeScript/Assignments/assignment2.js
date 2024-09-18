// 2.  Create typescript program to process customer details using object oriented programming.
// 				•	Class Name :	Customer
// 				•	Class should allow the following parameters in constructor
// 				let c1:Customer = new Customer();
// 				let c2:Customer = new Customer(10256);
// 				let c3:Customer = new Customer(10256, “Scott”);
// 				let c4:Customer = new Customer(10256, “Scott”, “Hyd”);
// 				•	Declare required number of variables in the class. 
// 				•	Method :  ShowDetails() to display all the values in single Line.
// 								Eg:	Customer Details  ::   Id : 10256, Name : Scott, City : Hyd
var Customer = /** @class */ (function () {
    function Customer(Id, Name, City) {
        if (Id === void 0) { Id = 0; }
        if (Name === void 0) { Name = ''; }
        if (City === void 0) { City = ''; }
        this.Id = Id;
        this.City = City;
        this.Name = Name;
    }
    Customer.prototype.showDetails = function () {
        console.log("Customer Details  ::   Id : ".concat(this.Id, ", Name : ").concat(this.Name, ", City : ").concat(this.City));
    };
    return Customer;
}());
var c1 = new Customer();
c1.showDetails();
var c2 = new Customer(10256);
c2.showDetails();
var c3 = new Customer(10256, 'Scott');
c3.showDetails();
var c4 = new Customer(10256, 'Scott', 'Hyd');
c4.showDetails();
