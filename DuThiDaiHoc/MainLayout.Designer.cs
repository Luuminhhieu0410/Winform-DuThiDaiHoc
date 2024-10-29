namespace DuThiDaiHoc
{
    partial class MainLayout
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainLayout));
            panel_left = new Panel();
            button_Diem = new Button();
            button_HoSo = new Button();
            button_NV = new Button();
            logo = new PictureBox();
            panel_Top = new Panel();
            label2 = new Label();
            panel_Body = new Panel();
            panel_left.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)logo).BeginInit();
            panel_Top.SuspendLayout();
            SuspendLayout();
            // 
            // panel_left
            // 
            panel_left.BackColor = Color.FromArgb(64, 186, 201);
            panel_left.Controls.Add(button_Diem);
            panel_left.Controls.Add(button_HoSo);
            panel_left.Controls.Add(button_NV);
            panel_left.Controls.Add(logo);
            panel_left.Dock = DockStyle.Left;
            panel_left.Location = new Point(0, 0);
            panel_left.Name = "panel_left";
            panel_left.Size = new Size(177, 450);
            panel_left.TabIndex = 0;
            panel_left.Paint += panel_left_Paint;
            // 
            // button_Diem
            // 
            button_Diem.BackColor = Color.FromArgb(64, 186, 201);
            button_Diem.Dock = DockStyle.Top;
            button_Diem.FlatAppearance.MouseOverBackColor = Color.FromArgb(9, 142, 159);
            button_Diem.FlatStyle = FlatStyle.Flat;
            button_Diem.Font = new Font("Microsoft Sans Serif", 11.25F, FontStyle.Regular, GraphicsUnit.Point, 0);
            button_Diem.ForeColor = Color.White;
            button_Diem.Location = new Point(0, 248);
            button_Diem.Name = "button_Diem";
            button_Diem.Size = new Size(177, 53);
            button_Diem.TabIndex = 3;
            button_Diem.Text = "Điểm";
            button_Diem.UseVisualStyleBackColor = false;
            // 
            // button_HoSo
            // 
            button_HoSo.BackColor = Color.FromArgb(64, 186, 201);
            button_HoSo.Dock = DockStyle.Top;
            button_HoSo.FlatAppearance.MouseDownBackColor = Color.White;
            button_HoSo.FlatAppearance.MouseOverBackColor = Color.FromArgb(9, 142, 159);
            button_HoSo.FlatStyle = FlatStyle.Flat;
            button_HoSo.Font = new Font("Microsoft Sans Serif", 11.25F, FontStyle.Regular, GraphicsUnit.Point, 0);
            button_HoSo.ForeColor = Color.White;
            button_HoSo.Location = new Point(0, 195);
            button_HoSo.Name = "button_HoSo";
            button_HoSo.Size = new Size(177, 53);
            button_HoSo.TabIndex = 2;
            button_HoSo.Text = "Hồ Sơ";
            button_HoSo.UseVisualStyleBackColor = false;
            button_HoSo.Click += button_HoSo_Click;
            // 
            // button_NV
            // 
            button_NV.BackColor = Color.FromArgb(64, 186, 201);
            button_NV.Dock = DockStyle.Top;
            button_NV.FlatAppearance.BorderColor = Color.White;
            button_NV.FlatAppearance.MouseOverBackColor = Color.FromArgb(9, 142, 159);
            button_NV.FlatStyle = FlatStyle.Flat;
            button_NV.Font = new Font("Microsoft Sans Serif", 11.25F, FontStyle.Regular, GraphicsUnit.Point, 0);
            button_NV.ForeColor = Color.White;
            button_NV.Location = new Point(0, 142);
            button_NV.Name = "button_NV";
            button_NV.Size = new Size(177, 53);
            button_NV.TabIndex = 0;
            button_NV.Text = "Nguyện Vọng";
            button_NV.UseVisualStyleBackColor = false;
            button_NV.Click += button_NV_Click;
            // 
            // logo
            // 
            logo.Dock = DockStyle.Top;
            logo.Image = (Image)resources.GetObject("logo.Image");
            logo.Location = new Point(0, 0);
            logo.Name = "logo";
            logo.Size = new Size(177, 142);
            logo.SizeMode = PictureBoxSizeMode.StretchImage;
            logo.TabIndex = 0;
            logo.TabStop = false;
            // 
            // panel_Top
            // 
            panel_Top.BackColor = Color.FromArgb(4, 65, 250);
            panel_Top.Controls.Add(label2);
            panel_Top.Dock = DockStyle.Top;
            panel_Top.Location = new Point(177, 0);
            panel_Top.Name = "panel_Top";
            panel_Top.Size = new Size(623, 70);
            panel_Top.TabIndex = 1;
            panel_Top.Paint += panel1_Paint;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.BackColor = Color.Blue;
            label2.Font = new Font("Microsoft Sans Serif", 12F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label2.ForeColor = Color.White;
            label2.Location = new Point(36, 23);
            label2.Name = "label2";
            label2.Size = new Size(56, 20);
            label2.TabIndex = 0;
            label2.Text = "Home";
            // 
            // panel_Body
            // 
            panel_Body.Dock = DockStyle.Fill;
            panel_Body.Location = new Point(177, 70);
            panel_Body.Name = "panel_Body";
            panel_Body.Size = new Size(623, 380);
            panel_Body.TabIndex = 2;
            // 
            // MainLayout
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(panel_Body);
            Controls.Add(panel_Top);
            Controls.Add(panel_left);
            Name = "MainLayout";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "MainLayout";
            panel_left.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)logo).EndInit();
            panel_Top.ResumeLayout(false);
            panel_Top.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private Panel panel_left;
        private Panel panel_Top;
        private PictureBox logo;
        private Label label2;
        private Panel panel_Body;
        private Button button_NV;
        private Button button_Diem;
        private Button button_HoSo;
    }
}