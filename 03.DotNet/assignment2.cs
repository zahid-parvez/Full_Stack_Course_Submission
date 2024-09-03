using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//1.Read Employee details from the user and display on console. 
//		Employee Id :  6546545

//        Employee Name   :  Scott
//        Employee Job :   Manager
        //Employee Salary :   85000
namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int id, price, quantity;
            string name;
            Console.WriteLine("Enter product name : ");
            name = Console.ReadLine();
            Console.WriteLine("Enter product id : ");
            id = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter product quantity : ");
            quantity = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter product price : ");
            price = int.Parse(Console.ReadLine());
            float  totalAmount = quantity * price;
            float discount = 0;
            if (quantity > 50)
            {
                discount = totalAmount * 0.5F;
            }
            else if (quantity > 30)
            {
                discount = totalAmount * 0.3F;
            }
            else if (quantity > 10)
            {
                discount = totalAmount * 0.1F;
            }
            Console.WriteLine("Total amount to be paid : " + totalAmount);
            Console.WriteLine( "Discount : " + discount);
            float ans = totalAmount - discount;
            Console.WriteLine("Amont to be paid : " + ans);
            Console.Read();
        }
    }
}
