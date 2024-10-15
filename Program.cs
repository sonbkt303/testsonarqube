using System;
using System.Collections.Generic;

namespace MyConsoleApp
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to the Order Management System");

            var order = new Order(1, "John Doe", "Laptop", 2, 1000m, DateTime.Now);
            ProcessOrder(order);

            var order2 = new Order(2, "Jane Smith", "Phone", 1, 800m, DateTime.Now);
            ProcessOrder(order2);
			
			int test1;
			
			int test2;
			test1 = 3;	
			

            CalculateDiscounts();
        }

        // Code Smell: Long method (does too much)
        public static void ProcessOrder(Order order)
        {
            // Create the order
            Console.WriteLine($"Creating order for {order.CustomerName}");

            // Code Smell: Magic number
            var taxRate = 0.07m; // 7% tax

            // Apply tax
            decimal totalPrice = order.Quantity * order.Price;
            decimal totalWithTax = totalPrice + (totalPrice * taxRate);
            Console.WriteLine($"Total price with tax: {totalWithTax}");

            // Code Smell: Duplicated code
            if (order.Price > 500)
            {
                Console.WriteLine("Sending email notification to customer...");
            }

            // Process shipping
            if (order.Quantity > 1)
            {
                Console.WriteLine("Shipping multiple items...");
            }
            else
            {
                Console.WriteLine("Shipping a single item...");
            }

            // Code Smell: Duplicated code (same logic for another order)
            if (order.Price > 500)
            {
                Console.WriteLine("Sending email notification to customer...");
            }
        }

        // Code Smell: Large parameter list
        public static decimal CalculateOrderTotal(int orderId, string customerName, string product, int quantity, decimal price)
        {
            return quantity * price;
        }

        // Code Smell: Duplicated logic for discount calculations
        public static void CalculateDiscounts()
        {
            var customer1 = new Customer { CustomerType = "Regular", PurchaseAmount = 2000m };
            var customer2 = new Customer { CustomerType = "VIP", PurchaseAmount = 10000m };

            // Code Smell: Magic numbers for discount rates
            if (customer1.CustomerType == "Regular")
            {
                decimal discount = customer1.PurchaseAmount * 0.05m;
                Console.WriteLine($"Regular customer discount: {discount}");
            }

            if (customer2.CustomerType == "VIP")
            {
                decimal discount = customer2.PurchaseAmount * 0.10m;
                Console.WriteLine($"VIP customer discount: {discount}");
            }
        }
    }

    public class Order
    {
        public int OrderId { get; set; }
        public string CustomerName { get; set; }
        public string Product { get; set; }
        public int Quantity { get; set; }
        public decimal Price { get; set; }
        public DateTime OrderDate { get; set; }

        public Order(int orderId, string customerName, string product, int quantity, decimal price, DateTime orderDate)
        {
            OrderId = orderId;
            CustomerName = customerName;
            Product = product;
            Quantity = quantity;
            Price = price;
            OrderDate = orderDate;
        }
    }

    public class Customer
    {
        public string CustomerType { get; set; }
        public decimal PurchaseAmount { get; set; }
    }
}

