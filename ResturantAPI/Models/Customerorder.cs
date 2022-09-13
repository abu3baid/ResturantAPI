using System;
using System.Collections.Generic;

#nullable disable

namespace ResturantAPI.Models
{
    public partial class Customerorder
    {
        public int Id { get; set; }
        public int MealId { get; set; }
        public int CustomerId { get; set; }
        public bool Archived { get; set; }
        public virtual Customer Customer { get; set; }
        public virtual Restaurantmenu Meal { get; set; }

    }
}
