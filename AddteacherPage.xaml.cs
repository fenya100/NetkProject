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
    /// Логика взаимодействия для AddteacherPage.xaml
    /// </summary>
    public partial class AddteacherPage : Page
    {
        private Teacher TeacherObj = new Teacher();
        public AddteacherPage(Teacher sTeacher)
        {
            InitializeComponent();
            if (sTeacher != null)
                TeacherObj = sTeacher;

            DataContext = TeacherObj;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Button1_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                DbConnect.entObj.Teacher.Add(TeacherObj);
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
