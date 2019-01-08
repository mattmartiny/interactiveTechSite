using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace InteractiveTechnologies.Models//.Metadata
{
    public class SlideshowMetadata
    {
        public int SlideID { get; set; }

        [Display(Name = "Image")]
        public int ImageID {get; set; }
        [Display(Name = "Slide Link")]
        public string SlideLink { get; set; }
        public bool Display { get; set; }
        [Display(Name = "Slide Order")]
        public int SlideOrder { get; set; }


    }
      [MetadataType(typeof(SlideshowMetadata))]
    public partial class Slideshow{ }

}