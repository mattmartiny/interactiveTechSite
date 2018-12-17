using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InteractiveTechnologies.Models
{
    public class GuestCheckoutOrderModel
    {
        public int OrderID { get; set; }
        public string UserID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string Company { get; set; }
        public string City { get; set; }
        public string PostalCode { get; set; }
        public string State { get; set; }
        public string Country { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public decimal Total { get; set; }
        public System.DateTime OrderDate { get; set; }

       
    }
}