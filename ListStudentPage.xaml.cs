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
    /// Логика взаимодействия для ListStudentPage.xaml
    /// </summary>
    public partial class ListStudentPage : Page
    {
        public ListStudentPage()
        {
            InitializeComponent();
           DgrStudent.ItemsSource = DbConnect.entObj.Student.ToList();
        }


        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new AddStudentPage((sender as Button).DataContext as Student));
        }

        private void Button1_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new AddStudentPage(null));
        }

        private void Button2_Click(object sender, RoutedEventArgs e)
        {
            DgrStudent.ItemsSource = DbConnect.entObj.Student.ToList();
        }

        private void Button3_Click(object sender, RoutedEventArgs e)
        {
            var studentForRemoving = DgrStudent.SelectedItems.Cast<Student>().ToList();
            try
                {
                    DbConnect.entObj.Student.RemoveRange(studentForRemoving);
                    DbConnect.entObj.SaveChanges();
                    MessageBox.Show("Данные удалены");

                    DgrStudent.ItemsSource = DbConnect.entObj.Student.ToList();
                }
                catch (Exception ex)
                {
                    System.Windows.MessageBox.Show(ex.Message.ToString());

                }
            }
        

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.GoBack();
        }

        private void Page_IsEnabledChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                DbConnect.entObj.ChangeTracker.Entries().ToList().ForEach(x => x.Reload());
                DgrStudent.ItemsSource = DbConnect.entObj.Student.ToList();

            }
        }

        private void DgrStudent_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
