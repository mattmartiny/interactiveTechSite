using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using InteractiveTechnologies.Models;

namespace InteractiveTechnologies.Controllers
{     public class WhatsNewsController : Controller
    {
        private InteractiveTechEntities db = new InteractiveTechEntities();



        // GET: WhatsNews
        public ActionResult Index()
        {
            var whatsNews = db.WhatsNews.Include(w => w.Image);
            return View(whatsNews.ToList());
        }


        public ActionResult IndexList()
        {
            var whatsNews = db.WhatsNews.Include(w => w.Image);
            return View(whatsNews.ToList());
        }

        // GET: WhatsNews/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WhatsNew whatsNew = db.WhatsNews.Find(id);
            if (whatsNew == null)
            {
                return HttpNotFound();
            }
            return View(whatsNew);
        }



        [Authorize(Roles ="Admin")]
        // GET: WhatsNews/Create
        public ActionResult Create()
        {
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName");
            return View();
        }

        // POST: WhatsNews/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [Authorize(Roles = "Admin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,HeaderText,Date,DisplayDate,ImageID,BodyText,Display,ImageSrc")] WhatsNew whatsNew)
        {
            if (ModelState.IsValid)
            {

                whatsNew.Date = DateTime.Now;




                db.WhatsNews.Add(whatsNew);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", whatsNew.ImageID);
            return View(whatsNew);
        }
        [Authorize(Roles = "Admin")]
        // GET: WhatsNews/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WhatsNew whatsNew = db.WhatsNews.Find(id);
            if (whatsNew == null)
            {
                return HttpNotFound();
            }
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", whatsNew.ImageID);
            return View(whatsNew);
        }

        // POST: WhatsNews/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,HeaderText,Date,DisplayDate,ImageID,BodyText,Display")] WhatsNew whatsNew)
        {
            if (ModelState.IsValid)
            {
                                            



                db.Entry(whatsNew).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", whatsNew.ImageID);
            return View(whatsNew);
        }
        [Authorize(Roles = "Admin")]
        // GET: WhatsNews/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WhatsNew whatsNew = db.WhatsNews.Find(id);
            if (whatsNew == null)
            {
                return HttpNotFound();
            }
            return View(whatsNew);
        }

        // POST: WhatsNews/Delete/5
        [Authorize(Roles = "Admin")]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            WhatsNew whatsNew = db.WhatsNews.Find(id);
            db.WhatsNews.Remove(whatsNew);
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
