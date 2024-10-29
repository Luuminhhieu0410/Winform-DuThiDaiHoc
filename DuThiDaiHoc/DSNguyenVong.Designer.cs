namespace DuThiDaiHoc
{
    partial class DSNguyenVong
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            dataGridView1 = new DataGridView();
            STT = new DataGridViewTextBoxColumn();
            MaNganh = new DataGridViewTextBoxColumn();
            TenNganh = new DataGridViewComboBoxColumn();
            DiemChuan = new DataGridViewTextBoxColumn();
            TongDiem = new DataGridViewTextBoxColumn();
            btn_Save = new Button();
            btn_Xoa = new Button();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            SuspendLayout();
            // 
            // dataGridView1
            // 
            dataGridView1.BackgroundColor = Color.White;
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Columns.AddRange(new DataGridViewColumn[] { STT, MaNganh, TenNganh, DiemChuan, TongDiem });
            dataGridView1.Location = new Point(1, 0);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.Size = new Size(623, 272);
            dataGridView1.TabIndex = 0;
            dataGridView1.CellContentClick += dataGridView1_CellContentClick;
            // 
            // STT
            // 
            STT.HeaderText = "STT";
            STT.Name = "STT";
            STT.Width = 40;
            // 
            // MaNganh
            // 
            MaNganh.HeaderText = "Mã Ngành";
            MaNganh.Name = "MaNganh";
            MaNganh.Width = 120;
            // 
            // TenNganh
            // 
            TenNganh.HeaderText = "Tên Ngành";
            TenNganh.Name = "TenNganh";
            TenNganh.Resizable = DataGridViewTriState.True;
            TenNganh.SortMode = DataGridViewColumnSortMode.Automatic;
            TenNganh.Width = 220;
            // 
            // DiemChuan
            // 
            DiemChuan.HeaderText = "Điểm Chuẩn";
            DiemChuan.Name = "DiemChuan";
            // 
            // TongDiem
            // 
            TongDiem.HeaderText = "Tổng Điểm";
            TongDiem.Name = "TongDiem";
            // 
            // btn_Save
            // 
            btn_Save.BackColor = Color.FromArgb(128, 128, 255);
            btn_Save.FlatAppearance.BorderSize = 0;
            btn_Save.FlatStyle = FlatStyle.Flat;
            btn_Save.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 0);
            btn_Save.Location = new Point(150, 301);
            btn_Save.Name = "btn_Save";
            btn_Save.Size = new Size(110, 37);
            btn_Save.TabIndex = 1;
            btn_Save.Text = "Lưu Thông Tin";
            btn_Save.UseVisualStyleBackColor = false;
            btn_Save.Click += button1_Click;
            // 
            // btn_Xoa
            // 
            btn_Xoa.BackColor = Color.FromArgb(128, 255, 128);
            btn_Xoa.FlatStyle = FlatStyle.Flat;
            btn_Xoa.Font = new Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 0);
            btn_Xoa.Location = new Point(336, 301);
            btn_Xoa.Name = "btn_Xoa";
            btn_Xoa.Size = new Size(110, 37);
            btn_Xoa.TabIndex = 2;
            btn_Xoa.Text = "Xóa";
            btn_Xoa.UseVisualStyleBackColor = false;
            // 
            // DSNguyenVong
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(626, 450);
            Controls.Add(btn_Xoa);
            Controls.Add(btn_Save);
            Controls.Add(dataGridView1);
            Name = "DSNguyenVong";
            Text = "DSNguyenVong";
            Load += DSNguyenVong_Load;
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private DataGridView dataGridView1;
        private DataGridViewTextBoxColumn STT;
        private DataGridViewTextBoxColumn MaNganh;
        private DataGridViewComboBoxColumn TenNganh;
        private DataGridViewTextBoxColumn DiemChuan;
        private DataGridViewTextBoxColumn TongDiem;
        private Button btn_Save;
        private Button btn_Xoa;
    }
}