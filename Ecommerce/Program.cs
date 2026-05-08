using ECommerceApp.Interfaces;
using ECommerceApp.Payments;
using ECommerceApp.Services;

namespace ECommerceApp
{
    class Program
    {
        static void Main(string[] args)
        {
            IPayment payment = new UPIPayment();

            OrderService orderService = new OrderService(payment);

            orderService.ProcessOrder(5000);
        }
    }
}