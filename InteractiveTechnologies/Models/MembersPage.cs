//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace InteractiveTechnologies.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class MembersPage
    {
        public int PageID { get; set; }
        public string RoleId { get; set; }
        public System.DateTime DateCreated { get; set; }
        public string PageTitle { get; set; }
        public bool DisplayDate { get; set; }
        public Nullable<int> ImageID { get; set; }
        public string BodyText { get; set; }
    
        public virtual AspNetRole AspNetRole { get; set; }
        public virtual Image Image { get; set; }
    }
}
