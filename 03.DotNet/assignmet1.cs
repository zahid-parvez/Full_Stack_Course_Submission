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
            string id, name, job;
            int salary;
            Console.WriteLine("Enter Emp Id :");
            id = Console.ReadLine();
            Console.WriteLine("Enter name:");
            name = Console.ReadLine();
            Console.WriteLine("Enter Job:");
            job = Console.ReadLine();
            Console.WriteLine("Enter Salary: ");
            salary = int.Parse(Console.ReadLine());

            Console.WriteLine("\t------User Details -------");
            Console.WriteLine("Employee Id : " + id);
            Console.WriteLine("Employee name : " + name);
            Console.WriteLine("Employee Job : " + job);
            Console.WriteLine("Emplyee Salary : " + salary);
            Console.Read();
        }
    }
}
