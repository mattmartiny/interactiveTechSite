using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace InteractiveTechnologies.Models//.Metadata
{
    public class WhatsNewMetadata
    {
        public int ID { get; set; }

        [Display(Name = "Header Text")]
        public string HeaderText { get; set; }
        public System.DateTime Date { get; set; }
        [Display(Name = "Display Date?")]
        public bool DisplayDate { get; set; }
        [Display(Name = "Image")]
        public Nullable<int> ImageID { get; set; }
        [Display(Name = "Body Text")]
        public string BodyText { get; set; }
        [Display(Name = "Display?")]
        public bool Display { get; set; }
    }

    [MetadataType(typeof(WhatsNewMetadata))]
        public partial class WhatsNew { }

 
}