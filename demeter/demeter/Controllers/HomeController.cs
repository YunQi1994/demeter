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

        public ActionResult BusinessSelection()
        {
            return View();
        }

        public ActionResult CuisineSelection()
        {
            return View();
        }

        public ActionResult TurkishCuisine()
        {
            return View();
        }

        public ActionResult LebaneseCuisine()
        {
            return View();
        }

        public ActionResult MiddleEasternCuisine()
        {
            return View();
        }

        public ActionResult Hairdressing()
        {
            return View();
        }
    }
}