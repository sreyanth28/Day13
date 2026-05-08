using System;
using ECommerceApp.Interfaces;

namespace ECommerceApp.Payments
{
    public class CreditCardPayment : IPayment
    {
        public void Pay(double amount)
        {
            Console.WriteLine("Paid using Credit Card: " + amount);
        }
    }
}