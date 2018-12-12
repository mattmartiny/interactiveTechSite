using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace InteractiveTechnologies.Models//.Metadata
{
    public class ProductMetadata
    {
      
            public int ProductID { get; set; }
            public int CategoryID { get; set; }
            [Display(Name = "Product Name")]
            public string ProductName { get; set; }
            [Display(Name = "Product Description")]
            public string ProductDescription { get; set; }
            public decimal? Price { get; set; }
            [Display(Name = "Product Image")]
            public string ProductImage { get; set; }

        }
        [MetadataType(typeof(ProductMetadata))]
        public partial class Product { }
   
}