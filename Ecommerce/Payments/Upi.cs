using System;
using ECommerceApp.Interfaces;

namespace ECommerceApp.Payments
{
    public class UPIPayment : IPayment
    {
        public void Pay(double amount)
        {
            Console.WriteLine("Paid using UPI: " + amount);
        }
    }
}