using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace DBConnect
{
    public class Connection
    {
        // Thuộc tính
        public string DataSource { get; set; } = "DESKTOP-MBTO88F";
        public string DatabaseName { get; set; } = "DuThiDaiHoc";
        

        public string ConnectionString => $"Data Source={DataSource};Initial Catalog={DatabaseName};Integrated Security=True";
        private SqlConnection conn;

        public Connection()
        {
            OpenConnection();
        }
        // Phương thức mở kết nối
        public void OpenConnection()
        {
            try
            {
                if (conn == null)
                    conn = new SqlConnection(ConnectionString);

                if (conn.State == ConnectionState.Closed)
                    conn.Open();
            }
            catch (SqlException ex)
            {
                MessageBox.Show($"Lỗi SQL: {ex.Message}", "Lỗi");
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Lỗi xảy ra: {ex.Message}", "Lỗi");
            }
        }

        // Phương thức đóng kết nối
        public void CloseConnection()
        {
            if (conn != null && conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

        // Phương thức thực hiện câu lệnh SELECT và trả về một giá trị
        public object ExecuteScalar(string query, SqlParameter[] parameters = null)
        {
            OpenConnection();

            try
            {
                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    if (parameters != null)
                    {
                        command.Parameters.AddRange(parameters);
                    }
                    return command.ExecuteScalar(); // Trả về một giá trị đơn lẻ
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Lỗi: {ex.Message}", "Lỗi");
                return null;
            }
            finally
            {
                CloseConnection();
            }
        }

        // Phương thức thực hiện câu lệnh SELECT và trả về nhiều dòng dữ liệu
        public SqlDataReader ExecuteReader(string query, SqlParameter[] parameters = null)
        {
            OpenConnection();

            try
            {
                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    if (parameters != null)
                    {
                        command.Parameters.AddRange(parameters);
                    }
                    
                    return command.ExecuteReader(CommandBehavior.CloseConnection); // Trả về dữ liệu dạng Reader
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Lỗi: {ex.Message}", "Lỗi");
                return null;
            }
        }

        // Phương thức thực hiện câu lệnh INSERT, UPDATE, DELETE
        public int ExecuteNonQuery(string query, SqlParameter[] parameters = null)
        {
            OpenConnection();

            try
            {
                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    if (parameters != null)
                    {
                        command.Parameters.AddRange(parameters);
                    }
                    return command.ExecuteNonQuery(); // Trả về số dòng bị ảnh hưởng
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Lỗi: {ex.Message}", "Lỗi");
                return 0;
            }
            finally
            {
                CloseConnection();
            }
        }

        
        //public string GetTen(int soBD)
        //{
        //    string query = "SELECT HoTen FROM HoSoThiSinh WHERE SoBD = @soBD";
        //    SqlParameter[] parameters = { new SqlParameter("@soBD", soBD) };

        //    // Dùng ExecuteScalar để lấy về giá trị đơn lẻ
        //    object result = ExecuteScalar(query, parameters);

        //    return result != null ? result.ToString() : string.Empty;
        //}
    }
}
