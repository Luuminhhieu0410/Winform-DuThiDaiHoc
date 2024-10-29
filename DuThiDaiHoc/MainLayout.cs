using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DuThiDaiHoc
{
    public partial class MainLayout : Form
    {
        public Form CurrentChilđFrom;
        public MainLayout()
        {
            InitializeComponent();
        }

        public void OpenChildForm(Form childForm)
        {
            //if (CurrentChilđFrom != null)
            //{
            //    CurrentChilđFrom.Close();
            //    CurrentChilđFrom = childForm;
            //}
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            panel_Body.Controls.Add(childForm);
            panel_Body.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }
        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void button_NV_Click(object sender, EventArgs e)
        {

            OpenChildForm(new DSNguyenVong());
            label2.Text = button_NV.Text;
        }

        private void button_HoSo_Click(object sender, EventArgs e)
        {
            OpenChildForm(new HoSo());
            label2.Text = button_HoSo.Text;
        }

        private void panel_left_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
