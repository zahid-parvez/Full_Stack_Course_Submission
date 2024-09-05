using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            System.Console.WriteLine("Enter id : ");
            int id = int.Parse(Console.ReadLine());

            System.Console.WriteLine("Enter name : ");
            string name = Console.ReadLine();

            System.Console.WriteLine("Enter price : ");
            int price = int.Parse(Console.ReadLine());

            System.Console.WriteLine("Enter quantity : ");
            int quantity = int.Parse(Console.ReadLine());

            System.Console.WriteLine("Enter category : ");
            string category = Console.ReadLine();


            string connStr = "Server=USHYDKZAHID6; Database=Sept2024Db; Integrated Security=true";
            string cmdText = string.Format("insert into product_table values({0},{1},{2},{3},{4})",id, name,price,quantity,category);

            SqlConnection conn = new SqlConnection(connStr);
            // conn.ConnectionString = connStr;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = cmdText;

            conn.Open();
            Console.WriteLine("Connected to Database successfully");

            int n = cmd.ExecuteNonQuery();  // For DML:  Insert, update, delete

            Console.WriteLine("No. of rows affected :" + n);
            conn.Close();
            Console.ReadLine();

        }
    }
}
