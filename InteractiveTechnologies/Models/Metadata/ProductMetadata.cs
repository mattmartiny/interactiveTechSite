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
        [Display(Name = "Category")]
        public int CategoryID { get; set; }
        [Display(Name = "Product Name")]
        public string ProductName { get; set; }
        [Display(Name = "Product Description")]
        public string ProductDescription { get; set; }
        [DataType(DataType.Currency)]
        public decimal? Price { get; set; }
        public int ImageID { get; set; }
        [Display(Name = "Display Product?")]
        public bool DisplayProduct { get; set; }
        [Display(Name = "Product Order")]
        public int ProductOrder { get; set; }

    }
    [MetadataType(typeof(ProductMetadata))]
    public partial class Product { }



}