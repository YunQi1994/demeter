using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using demeter.Models;

namespace demeter.Controllers
{
    public class Female_Operator_IncomeController : Controller
    {
        private demeter_Models db = new demeter_Models();

        // GET: Female_Operator_Income
        public ActionResult Index()
        {
            return View(db.Female_Operator_Income.ToList());
        }

        // GET: Female_Operator_Income/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Female_Operator_Income female_Operator_Income = db.Female_Operator_Income.Find(id);
            if (female_Operator_Income == null)
            {
                return HttpNotFound();
            }
            return View(female_Operator_Income);
        }

        // GET: Female_Operator_Income/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Female_Operator_Income/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,year,age,count,income")] Female_Operator_Income female_Operator_Income)
        {
            if (ModelState.IsValid)
            {
                db.Female_Operator_Income.Add(female_Operator_Income);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(female_Operator_Income);
        }

        // GET: Female_Operator_Income/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Female_Operator_Income female_Operator_Income = db.Female_Operator_Income.Find(id);
            if (female_Operator_Income == null)
            {
                return HttpNotFound();
            }
            return View(female_Operator_Income);
        }

        // POST: Female_Operator_Income/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,year,age,count,income")] Female_Operator_Income female_Operator_Income)
        {
            if (ModelState.IsValid)
            {
                db.Entry(female_Operator_Income).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(female_Operator_Income);
        }

        // GET: Female_Operator_Income/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Female_Operator_Income female_Operator_Income = db.Female_Operator_Income.Find(id);
            if (female_Operator_Income == null)
            {
                return HttpNotFound();
            }
            return View(female_Operator_Income);
        }

        // POST: Female_Operator_Income/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Female_Operator_Income female_Operator_Income = db.Female_Operator_Income.Find(id);
            db.Female_Operator_Income.Remove(female_Operator_Income);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
