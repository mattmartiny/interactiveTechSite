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
    
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.ProductCategories = new HashSet<ProductCategory>();
        }
    
        public int ProductID { get; set; }
        public int CategoryID { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public int ImageID { get; set; }
        public Nullable<int> Image2ID { get; set; }
        public Nullable<int> Image3ID { get; set; }
        public bool DisplayProduct { get; set; }
        public int ProductOrder { get; set; }
        public string Download { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual Image Image { get; set; }
        public virtual Image Image1 { get; set; }
        public virtual Image Image2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductCategory> ProductCategories { get; set; }
    }
}
