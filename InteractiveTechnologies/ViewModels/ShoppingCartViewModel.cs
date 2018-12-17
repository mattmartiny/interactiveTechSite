using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using InteractiveTechnologies.Models;

namespace InteractiveTechnologies.ViewModels
{
    public class ShoppingCartViewModel
    {
 
        public List<Cart> CartItems { get; set; }
        [DataType(DataType.Currency)]
        public decimal CartTotal { get; set; }

        
        
    }
}