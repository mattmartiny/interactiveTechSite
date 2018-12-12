using System;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace InteractiveTechnologies.Models//.Metadata
{
        class CategoryMetadata
        {
            public int CategoryID { get; set; }
            [Display(Name = "Category Name")]
            public string CategoryName { get; set; }

        }
        [MetadataType(typeof(CategoryMetadata))]
        public partial class Category { }

        
    
}