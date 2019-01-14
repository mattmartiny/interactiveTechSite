using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InteractiveTechnologies.Models//.Metadata
{

    public class ProductMetadata
    {

        public int ProductID { get; set; }
        [Display(Name = "Category")]
        public int CategoryID { get; set; }
        [Display(Name = "Product Name")]
        public string ProductName { get; set; }
        [Display(Name = "Product Description")]
        [AllowHtml]
        public string ProductDescription { get; set; }
  
        public int ImageID { get; set; }
        [Display(Name = "Display Product?")]
        public bool DisplayProduct { get; set; }
        [Display(Name = "Product Order")]
        public int ProductOrder { get; set; }
        [AllowHtml]
        public string Specs { get; set; }

    }
    [MetadataType(typeof(ProductMetadata))]
    public partial class Product { }



}