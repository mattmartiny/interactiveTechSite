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
    
    public partial class WhatsNew
    {
        public int ID { get; set; }
        public string HeaderText { get; set; }
        public System.DateTime Date { get; set; }
        public bool DisplayDate { get; set; }
        public Nullable<int> ImageID { get; set; }
        public string BodyText { get; set; }
        public bool Display { get; set; }
    
        public virtual Image Image { get; set; }
    }
}