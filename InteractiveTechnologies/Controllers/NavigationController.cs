using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using InteractiveTechnologies.Models;

namespace InteractiveTechnologies.Controllers
{
    public class NavigationController : Controller
    {
        InteractiveTechEntities db = new InteractiveTechEntities();

        // GET: Navigation

        [ChildActionOnly]
        public PartialViewResult GetMenuForUser()         
        {

            var user = (from v in db.AspNetUsers
                        select v.Id).ToString();

            var userRole = db.AspNetRoles.Where(s => s.AspNetUsers.Any(c => c.Id == user));

            /*-----------------------*/

            //var Role = (from z in db.AspNetRoles
            // select z.Id).ToString();//RoleIds String


            

                            

                          
           


          
            return PartialView("_userMenu");
        }


    }
}