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
    /// Логика взаимодействия для ListTeacherPage.xaml
    /// </summary>
    public partial class ListTeacherPage : Page
    {
        public ListTeacherPage()
        {
            InitializeComponent();
           DgrTeacher.ItemsSource = DbConnect.entObj.Teacher.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void Button1_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new AddteacherPage(null));
        }

        private void Button2_Click(object sender, RoutedEventArgs e)
        {
            DgrTeacher.ItemsSource = DbConnect.entObj.Teacher.ToList();
        }

        private void Button3_Click(object sender, RoutedEventArgs e)
        {
            var teachersForRemoving = DgrTeacher.SelectedItems.Cast<Teacher>().ToList();

            try
                {
                    DbConnect.entObj.Teacher.RemoveRange(teachersForRemoving);
                    DbConnect.entObj.SaveChanges();
                   MessageBox.Show("Данные удалены");

                    DgrTeacher.ItemsSource = DbConnect.entObj.Teacher.ToList();
                }
                catch (Exception ex)
                {
                    System.Windows.MessageBox.Show(ex.Message.ToString());

                }
        }
        

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new AddteacherPage((sender as Button).DataContext as Teacher));
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.GoBack();
        }

        private void Page_IsEnabledChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                DbConnect.entObj.ChangeTracker.Entries().ToList().ForEach(x => x.Reload());
                DgrTeacher.ItemsSource = DbConnect.entObj.Teacher.ToList();

            }
        }
    }
}
