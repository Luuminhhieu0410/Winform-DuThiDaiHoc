using System;
using System.Windows.Forms;
using BLL; // Đảm bảo bạn đã thêm tham chiếu đến namespace chứa DSNV

namespace DuThiDaiHoc
{
    public partial class DSNguyenVong : Form
    {
        private DSNV dsnv; // Khai báo đối tượng DSNV

        public DSNguyenVong()
        {
            InitializeComponent();
            dsnv = new DSNV(); // Khởi tạo đối tượng DSNV
            LoadData(); // Gọi hàm load dữ liệu
        }

        private void LoadData()
        {
            // Gọi phương thức để lấy dữ liệu từ database
            dsnv.getNguyenVong();
            foreach (var diemChuan in dsnv.listDiemChuan)
            {
                if (diemChuan.getTenNganh() != null)
                    // Add items vào cột ComboBox TenNganh
                    ((DataGridViewComboBoxColumn)dataGridView1.Columns["TenNganh"]).Items.Add(diemChuan.getTenNganh());


            }

            // Duyệt qua danh sách Nguyễn Vọng và Điểm Chuẩn, sau đó thêm vào DataGridView
            for (int i = 0; i < dsnv.listNguyenVong.Count; i++)
            {
                // Thêm dòng mới vào DataGridView
                dataGridView1.Rows.Add(
                    dsnv.listNguyenVong[i].ThuTu, // Cột STT
                    dsnv.listDiemChuan[i].MaNguyenVong, // Cột Mã Ngành
                    dsnv.listDiemChuan[i].TenNganh, // Cột Tên Ngành
                    dsnv.listDiemChuan[i].TongDiem, // Cột Điểm Chuẩn
                    dsnv.diemthi.TongDiem // Cột Tổng Điểm
                );
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            // Xử lý sự kiện khi người dùng nhấn vào cell nếu cần
        }

        private void DSNguyenVong_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
