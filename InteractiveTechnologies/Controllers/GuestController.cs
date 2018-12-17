using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using InteractiveTechnologies.Models;
using System.Web.Mvc;

namespace InteractiveTechnologies.Controllers
{
   public class GuestController : Controller
    {

        InteractiveTechEntities db = new InteractiveTechEntities();
        
        
        
        // GET: /Guest/GuestCheckout
        public ActionResult GuestCheckout()
        {



            return View();
        }



        [HttpPost]
        [AllowAnonymous]
         public ActionResult GuestCheckout(FormCollection values)
        {
            //retrieve cart
            GuestCheckoutOrderModel guest = new GuestCheckoutOrderModel();
            //add it
            var order = new Order();
            TryUpdateModel(order);
            try
            {

                var Cart = ShoppingCart.GetCart(HttpContext);
                order.FirstName = guest.FirstName;
                order.LastName = guest.LastName;
                order.Address = guest.Address;
                order.Company = guest.Company;
                order.City = guest.City;
                order.State = guest.State;
                order.Country = guest.Country;
                order.Email = guest.Email;
                order.Total = Cart.GetTotal();
                order.OrderDate = DateTime.Now;
                db.Orders.Add(order);
                db.SaveChanges();




                return RedirectToAction("Complete", new { id = order.OrderID });

            }
            catch
            {

                return View(order);
            }
                  
        }

        public ActionResult Complete(int id)
        {
            // Validate customer owns this order
            bool isValid = db.Orders.Any(
                o => o.OrderID == id);

            if (isValid)
            {
                return View(id);
            }
            else
            {
                return View("Error");
            }
        }
        public ActionResult pay()
        {
            return View();
        }

    }
}