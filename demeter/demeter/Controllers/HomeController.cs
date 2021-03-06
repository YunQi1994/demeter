﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace demeter.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Login()
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

        public ActionResult LandingPage()
        {
            return View();
        }

        public ActionResult PreferenceTK()
        {
            return View();
        }

        public ActionResult PreferenceLB()
        {
            return View();
        }

        public ActionResult PreferenceME()
        {
            return View();
        }

        public ActionResult PreferenceHD()
        {
            return View();
        }



        public ActionResult CompareTK()
        {
            return View();
        }

        public ActionResult CompareME()
        {
            return View();
        }

        public ActionResult CompareLB()
        {
            ViewBag.pageSubject = "Compare Suburbs in Lebanese Cuisine";
            return View();
            
        }

        public ActionResult CompareHD()
        {
            ViewBag.pageSubject = "Compare Suburbs in Hairdressing Business";
            return View();

        }

        public ActionResult SliderTK()
        {
            ViewBag.sliderPageSubject = "Choose your best suburbs in Turkish Cuisine";
            return View();

        }

        public ActionResult SliderME()
        {
            ViewBag.sliderPageSubject = "Choose your best suburbs in Middle Eastern Cuisine";
            return View();

        }

        public ActionResult SliderLB()
        {
            ViewBag.sliderPageSubject = "Choose your best suburbs in Lebanese Cuisine";
            return View();

        }

        public ActionResult SliderHD()
        {
            ViewBag.sliderPageSubject = "Choose your best suburbs in Hairdressing Business";
            return View();

        }

        public ActionResult Supporting()
        {
            return View();
        }
    }
}