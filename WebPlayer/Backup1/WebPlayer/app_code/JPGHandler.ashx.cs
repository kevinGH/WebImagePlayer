using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebPlayer.app_code
{
    /// <summary>
    /// Summary description for JPGHandler
    /// </summary>
    public class JPGHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "application/jpg";
            context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}