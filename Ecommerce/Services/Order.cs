using ECommerceApp.Interfaces;

namespace ECommerceApp.Services
{
    public class OrderService
    {
        private IPayment payment;

        public OrderService(IPayment payment)
        {
            this.payment = payment;
        }

        public void ProcessOrder(double amount)
        {
            payment.Pay(amount);
        }
    }
}