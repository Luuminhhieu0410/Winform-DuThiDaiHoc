using System.Text.Encodings;
namespace DuThiDaiHoc
{
    internal static class Program
    {
        /// <summary>
        ///  The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            // To customize application configuration such as set high DPI settings or default font,
            // see https://aka.ms/applicationconfiguration.
            Console.OutputEncoding = System.Text.Encoding.Unicode;
            
            ApplicationConfiguration.Initialize();
            Application.Run(new DangNhap());
        }
    }
}