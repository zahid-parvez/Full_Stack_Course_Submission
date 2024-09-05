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
            string connStr = "Server=USHYDKZAHID6; Database=Sept2024Db; Integrated Security=true";

            string cmdText = "SELECT * FROM product_table";

            SqlDataAdapter adapter = new SqlDataAdapter(cmdText, connStr);
            DataSet ds = new DataSet();

            adapter.Fill(ds);

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Console.WriteLine("{0},{1},{2}, {3}, {4}", row["productid"].ToString(), row["prodname"].ToString(), row["prodprice"].ToString(), row["prodquantity"].ToString(), row["prodcategory"].ToString());
            }

            Console.ReadLine();

        }
    }
}