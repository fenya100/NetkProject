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
    /// Логика взаимодействия для AddStudentPage.xaml
    /// </summary>
    public partial class AddStudentPage : Page
    {
        private Student StudentObj = new Student();

        public AddStudentPage(Student sStudent)
        {
            InitializeComponent();
            if (sStudent != null)
                StudentObj = sStudent;

            DataContext = StudentObj;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Button1_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                DbConnect.entObj.Student.Add(StudentObj);
                DbConnect.entObj.SaveChanges();

                MessageBox.Show("Результат добавлен в базу данных!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка работы приложения: " + ex.Message.ToString(), "Критический сбой работы приложения", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void Button2_Click(object sender, RoutedEventArgs e)
        {
            try
            {
               
                DbConnect.entObj.SaveChanges();

                MessageBox.Show("Данные сохранены!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
               
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка работы приложения: " + ex.Message.ToString(), "Критический сбой работы приложения", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
    }
}
