using ResturantAPI.Dtos;
using ResturantAPI.Models;
using System.Collections.Generic;
using System;
using System.Linq;

namespace ResturantAPI.Services
{
    public class CustomerOrderService : ICustomerOrderService
    {
        private resturantdbContext _db;

        public CustomerOrderService(resturantdbContext db)
        {
            _db = db;
        }

        public List<Customerorder> GetAllOrders()
        {
            var customers = _db.Customerorders.ToList();
            return customers;
        }

        public Customer GetOrderById(int Id)
        {
            var customer = _db.Customers.Find(Id);
            return customer;
        }

        public int Order(CreateCustomerOrderDto dto)
        {
            var order = new Customerorder
            {
                MealId = dto.MealId,
                CustomerId = dto.CustomerId
            };
            _db.Customerorders.Add(order);
            _db.SaveChanges();
            return order.MealId;
        }

        public int UpdateOrder(UpdateCustomerOrderDto dto)
        {
            try
            {
                var order = _db.Customerorders.Find(dto.Id);
                order.Id = dto.Id;
                order.MealId = dto.MealId;
                order.CustomerId = dto.CustomerId;
                _db.Customerorders.Update(order);
                _db.SaveChanges();
                return order.Id;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return -1;
            }
        }

        public void DeleteOrder(int Id)
        {
            var order = _db.Customerorders.Find(Id);
            order.Archived = true;
            _db.SaveChanges();
        }
    }
}
