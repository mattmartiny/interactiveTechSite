using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InteractiveTechnologies.Models//.Metadata
{
    public class MembersPageMetadata
    {

        public int PageID { get; set; }
        [Display(Name = "Role Name")]
        public string RoleId { get; set; }
        [Display(Name = "Date Created")]
        public System.DateTime DateCreated { get; set; }
        [Display(Name = "Page Title")]
        public string PageTitle { get; set; }
        [Display(Name = "Display Date?")]
        public bool DisplayDate { get; set; }
        [Display(Name = "Image ID")]
        public Nullable<int> ImageID { get; set; }
        [Display(Name = "Body Text")]
        [AllowHtml]
        public string BodyText { get; set; }

        public virtual AspNetRole AspNetRole { get; set; }
        public virtual Image Image { get; set; }

    }

    [MetadataType(typeof(MembersPageMetadata))]
    public partial class MembersPage { }
 
    }