using ResturantAPI.Dtos;
using ResturantAPI.Models;
using System.Collections.Generic;
using System;
using System.Linq;

namespace ResturantAPI.Services
{
    public class ResturantMenuService : IResturantMenuService
    {
        private resturantdbContext _db;

        public ResturantMenuService(resturantdbContext db)
        {
            _db = db;
        }

        public List<Restaurantmenu> GetAll()
        {
            var menus = _db.Restaurantmenus.ToList();
            return menus;
        }

        public Restaurantmenu Get(int Id)
        {
            var menu = _db.Restaurantmenus.Find(Id);
            return menu;
        }

        public int Create(CreateResturantMenuDto dto)
        {
            var menu = new Restaurantmenu
            {
                MealName = dto.MealName,
                PriceInNis = dto.PriceInNis,
                PriceInUsd = dto.PriceInNis / 3.5,
                Quantity = dto.Quantity,
                ResturantId = dto.ResturantId
            };
            _db.Restaurantmenus.Add(menu);
            _db.SaveChanges();
            return menu.Id;
        }

        public int Update(UpdateResturantMenuDto dto)
        {
            try
            {
                var resturantMenu = _db.Restaurantmenus.Find(dto.Id);
                resturantMenu.Id = dto.Id;
                resturantMenu.MealName = dto.MealName;
                resturantMenu.PriceInNis = dto.PriceInNis;
                resturantMenu.PriceInUsd = dto.PriceInNis / 3.5;
                resturantMenu.Quantity = dto.Quantity;
                resturantMenu.ResturantId = dto.ResturantId;
                _db.Restaurantmenus.Update(resturantMenu);
                _db.SaveChanges();
                return resturantMenu.Id;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return -1;
            }
        }

        public void Delete(int Id)
        {
            var resturantMenu = _db.Restaurantmenus.Find(Id);
            resturantMenu.Archived = true;
            _db.SaveChanges();
        }
    }
}
