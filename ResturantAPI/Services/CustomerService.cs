using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using ResturantAPI.Dtos;
using ResturantAPI.Models;

namespace ResturantAPI.Services
{
    public class CustomerService : ICustomerService
    {
        private resturantdbContext _db;

        public CustomerService(resturantdbContext db)
        {
            _db = db;
        }

        public List<Customer> GetAll()
        {
            var customers = _db.Customers.ToList();
            return customers;
        }

        public Customer Get(int Id)
        {
            var customer = _db.Customers.Find(Id);
            return customer;
        }

        public int Create(CreateCustomerDto dto)
        {
            var customer = new Customer
            {
                FirstName = dto.FirstName,
                LastName = dto.LastName
            };
            _db.Customers.Add(customer);
            _db.SaveChanges();
            return customer.Id;
        }

        public int Update(UpdateCustomerDto dto)
        {
            try
            {
                var customer = _db.Customers.Find(dto.Id);
                customer.Id = dto.Id;
                customer.FirstName = dto.FirstName;
                customer.LastName = dto.LastName;
                _db.Customers.Update(customer);
                _db.SaveChanges();
                return customer.Id;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return -1;
            }
        }
        
        public void Delete(int Id)
        {
            var customer = _db.Customers.Find(Id);
            customer.Archived = true;
            _db.SaveChanges();
        }
    }
}
