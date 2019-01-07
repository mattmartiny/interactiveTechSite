using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace InteractiveTechnologies.Models//.Metadata
{
    public class ImagesMetadata
    {
        public int ImageID { get; set; }
        [Display(Name = "Image Name")]
        public string ImageName { get; set; }
        public string Description { get; set; }
        [Display(Name = "Image Alt")]
        public string ImageAlt { get; set; }
        [Display(Name = "Image Source")]
        public string ImageSrc { get; set; }
    }
    [MetadataType(typeof(ImagesMetadata))]
    public partial class Images{ }
}