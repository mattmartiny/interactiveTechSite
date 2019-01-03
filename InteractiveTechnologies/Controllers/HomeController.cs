using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Web.Mvc;
using InteractiveTechnologies.Models;
using System.Net;

namespace InteractiveTechnologies.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact(ContactViewModel contact)
        {
            // Create the body of the email
            string body = $"Name: {contact.Name} <br/>Email: {contact.Email}<br/>Subject: {contact.Subject}<br/>Message: {contact.Message}";


            //Create and configure the MailMessage object
            //Must add using system.Net.Mail
            MailMessage msg = new MailMessage("no-reply@mattmartiny.com", "mattmartiny@yahoo.com", contact.Subject + " - " + DateTime.Now, body);
            //Additional properties for Mail MEssage objects
            msg.IsBodyHtml = true;
            msg.Priority = MailPriority.Normal;


            //Create and configure the smtpClient object
            SmtpClient client = new SmtpClient("mail.mattmartiny.com");
            client.Credentials =
                new NetworkCredential("no-reply@mattmartiny.com", "10316CodySt.");
            //Attempt to send the email

            if (ModelState.IsValid)
            {

                try
                {

                    client.Send(msg);

                }
                catch (Exception ex)
                {
                    //for testing purposes should not be included in production
                    //ViewBag.ExceptionMessage = ex.InnerException;

                    //Error message 
                    ViewBag.ErrorMessage = "Unable to send email.  Please try again";
                    return View();
                }

                //if message was sent, send user to ContactConfirmation View and display info from the message

                return View("ContactConfirmation", contact);
            }
            return View();
        }
       
          

     
        public ActionResult Applications()
        {
          

            return View();
        }
    }
}