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
    
    public partial class Image
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Image()
        {
            this.MembersPages = new HashSet<MembersPage>();
        }
    
        public int ImageID { get; set; }
        public string ImageName { get; set; }
        public string Description { get; set; }
        public string ImageAlt { get; set; }
        public string ImageSrc { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MembersPage> MembersPages { get; set; }
    }
}