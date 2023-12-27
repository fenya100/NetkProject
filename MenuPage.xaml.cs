using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace NetkProject
{
    /// <summary>
    /// Логика взаимодействия для MenuPage.xaml
    /// </summary>
    public partial class MenuPage : Page
    {
        public MenuPage()
        {
            InitializeComponent();
        }

        

        private void Button1_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new ListStudentPage());
        }

        private void Button2_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new AddStudentPage(null));
        }

        private void Button3_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new ListTeacherPage());
        }

        private void Button4_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new AddteacherPage(null));
        }
    }
}
