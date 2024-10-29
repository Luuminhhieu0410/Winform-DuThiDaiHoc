using BLL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;
namespace DuThiDaiHoc
{
    public partial class DangNhap : Form
    {   public DSNV dsnv;
        public MainLayout mainLayout;
        public DangNhap()
        {
            InitializeComponent();
            dsnv = new DSNV();
            mainLayout = new MainLayout();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void linkDangKy_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

        }

        private void submitDangNhap_Click(object sender, EventArgs e)
        {
            if (dsnv.checkLogin(int.Parse(textBox1.Text),textBox2.Text))
            {
                MessageBox.Show("dang nhap thanh cong");
                mainLayout.Show();
                this.Hide();

            }
            else
            {
                MessageBox.Show("dang nhap that bai");
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}
