using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InteractiveTechnologies.Models//.Metadata
{
    public class NewsMetadata
    {
        public int ArticleID { get; set; }
        [Display(Name = "Article Header")]
        public string ArticleHeaderText { get; set; }
        [Display(Name = "Article Date")]
        public System.DateTime ArticleDate { get; set; }
        [Display(Name = "Display Date?")]
        public bool DisplayDate { get; set; }
        [Display(Name = "Article Text")]
        [DataType(DataType.MultilineText)]
        [AllowHtml]
        public string ArticleText { get; set; }
        [Display(Name = "Order")]
        public int ArticleOrder { get; set; }
    }
    [MetadataType(typeof(NewsMetadata))]
    public partial class News { }
}