using System;
using System.Data;
using System.Data.SqlClient;

namespace DuThiDaiHoc.Connection
{
    public class Connection
    {
        public string dataSource = "DESKTOP-MBTO88F";
        public string databaseName = "DuThiDaiHoc";
        public void create()
        {
            string connectionString = $"Data Source={dataSource};Initial Catalog={databaseName};Integrated Security=True";

            try
            {
                using (var cnn = new SqlConnection(connectionString))
                {
                    cnn.Open();
                    Console.WriteLine("Connection opened successfully.");
                    
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
            }

        }
    }
}
