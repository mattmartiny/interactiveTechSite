using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace InteractiveTechnologies.HTMLHelpers
{
    public static class HtmlExtensions
    {
        public static IHtmlString DisplayFormattedData(this HtmlHelper htmlHelper, string data)
        {
            if (string.IsNullOrEmpty(data))
            {
                return MvcHtmlString.Empty;
            }

            var result = string.Join(
                "<br/>",
                data
                    .Split(new[] { Environment.NewLine }, StringSplitOptions.None)
                    .Select(htmlHelper.Encode)
            );
            return new HtmlString(result);
        }

    }

//    public static class SpamProtectionExtensions
//    {
//        public static string SpamProtectionTimeStamp(this HtmlHelper helper)
//        {
//            var builder = new TagBuilder("input");
//            builder.MergeAttribute("id", "SpamProtectionTimeStamp");
//            builder.MergeAttribute("name", "SpamProtectionTimeStamp");
//            builder.MergeAttribute("type", "hidden");
//            builder.MergeAttribute("value", ((long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalSeconds).ToString());
//            return builder.ToString(TagRenderMode.SelfClosing);
//        }
//    }


//    public class SpamProtectionAttribute : FilterAttribute, IAuthorizationFilter
//{
//  public void OnAuthorization(AuthorizationContext filterContext)
//  {
//    long timestamp = long.MaxValue;
 
//    if (Int64.TryParse(filterContext.RequestContext.HttpContext.Request.Params["SpamProtectionTimeStamp"], out timestamp))
//    {
//      long currentTime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalSeconds;
 
//      if (currentTime <= timestamp + 1)
//      {
//        throw new HttpException("Invalid form submission. At least one seconds have to pass before form submission.");
//      }
//    }
//    else
//    {
//      throw new HttpException("Invalid form submission. Invalid timestamp parameter.");
//    }
//  }
//}

}