using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace demeter.Controllers
{
    public class HomeController : Controller
    {
        
        public ActionResult Welcome()
        {
            return View();
        }

        public ActionResult Business()
        {
            return View();
        }

        public ActionResult Cuisine()
        {
            return View();
        }
    }
}