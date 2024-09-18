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



class Customer {
    public Id: number;
    public Name: string;
    public City: string;
    constructor(Id: number = 0, Name: string = '', City: string = '') {
        this.Id = Id;
        this.City = City;
        this.Name = Name;
    }

    public showDetails() {
        console.log(`Customer Details  ::   Id : ${this.Id}, Name : ${this.Name}, City : ${this.City}`);
    }
}

let c1: Customer = new Customer();
c1.showDetails();
let c2: Customer = new Customer(10256);
c2.showDetails();
let c3: Customer = new Customer(10256, 'Scott');
c3.showDetails();
let c4: Customer = new Customer(10256, 'Scott', 'Hyd');
c4.showDetails();