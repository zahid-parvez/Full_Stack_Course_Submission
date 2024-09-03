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
            string email, name;
            int age;
            Console.WriteLine("Hi, I'm Zahid");
            Console.WriteLine("Enter name :");
            name = Console.ReadLine();
            Console.WriteLine("Enter email:");
            email = Console.ReadLine();
            Console.WriteLine("Enter age");
            age = int.Parse(Console.ReadLine());

            Console.WriteLine("\t------User Details -------");
            Console.WriteLine("Name : " + name);
            Console.WriteLine("Email : " + email);
            Console.WriteLine("Age : " + age);
            Console.Read();
        }
    }
}
