using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading;

namespace WebPlayer
{
    /// <summary>
    /// Summary description for Timer
    /// </summary>
    public class ShowTime : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");

            AutoResetEvent signal = new AutoResetEvent(false);
            Random rnd = new Random();
            int waitSecond = rnd.Next(5, 6);
            Timer timer = new Timer(new TimerCallback((e) =>
            {
                context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                context.Response.Write("Current Time: " + DateTime.Now.ToString());
                signal.Set();
            }), null, waitSecond * 1000, 0);
            signal.WaitOne();
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