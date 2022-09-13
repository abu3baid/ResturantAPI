using ResturantAPI.Dtos;
using ResturantAPI.Models;
using System.Collections.Generic;
using System;
using System.Linq;

namespace ResturantAPI.Services
{
    public class ResturantService : IResturantService
    {
        private resturantdbContext _db;

        public ResturantService(resturantdbContext db)
        {
            _db = db;
        }

        public List<Resturant> GetAll()
        {
            var resturants = _db.Resturants.ToList();
            return resturants;
        }

        public Resturant Get(int Id)
        {
            var resturant = _db.Resturants.Find(Id);
            return resturant;
        }

        public int Create(CreateResturantDto dto)
        {
            var resturant = new Resturant
            {
                Name = dto.Name,
                PhoneNumber = dto.PhoneNumber,
            };
            _db.Resturants.Add(resturant);
            _db.SaveChanges();
            return resturant.Id;
        }

        public int Update(UpdateResturantDto dto)
        {
            try
            {
                var resturant = _db.Resturants.Find(dto.Id);
                resturant.Id = dto.Id;
                resturant.Name = dto.Name;
                resturant.PhoneNumber = dto.PhoneNumber;
                _db.Resturants.Update(resturant);
                _db.SaveChanges();
                return resturant.Id;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return -1;
            }
        }

        public void Delete(int Id)
        {
            var resturant = _db.Resturants.Find(Id);
            resturant.Archived = true;
            _db.SaveChanges();
        }
    }
}
