using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace InteractiveTechnologies.Models
{
    public class ContactViewModel
    {


        [Required(ErrorMessage = "**Name is Required")]
        public string Name { get; set; }

        [Required(ErrorMessage = "**Email is Required")]
        [EmailAddress(ErrorMessage = "*Enter a valid Email Address*")]
        public string Email { get; set; }


        public string Subject { get; set; }

        [Required(ErrorMessage = "**Message is Required")]
        public string Message { get; set; }

       



    }
    }
