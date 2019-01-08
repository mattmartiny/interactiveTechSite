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
{

    public class SlideshowController : Controller
    {
        private InteractiveTechEntities db = new InteractiveTechEntities();
        [Authorize(Roles = "Admin")]
        // GET: Slideshow
        public ActionResult Index()
        {
            var slideshows = db.Slideshows.Include(s => s.Image);
            return View(slideshows.ToList());
        }
        [Authorize(Roles = "Admin")]
        // GET: Slideshow/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Slideshow slideshow = db.Slideshows.Find(id);
            if (slideshow == null)
            {
                return HttpNotFound();
            }
            return View(slideshow);
        }
        [Authorize(Roles = "Admin")]
        // GET: Slideshow/Create
        public ActionResult Create()
        {
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName");
            return View();
        }

        // POST: Slideshow/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SlideID,ImageID,SlideLink,Display,SlideOrder")] Slideshow slideshow)
        {
            if (ModelState.IsValid)
            {
                db.Slideshows.Add(slideshow);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", slideshow.ImageID);
            return View(slideshow);
        }
        [Authorize(Roles = "Admin")]
        // GET: Slideshow/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Slideshow slideshow = db.Slideshows.Find(id);
            if (slideshow == null)
            {
                return HttpNotFound();
            }
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", slideshow.ImageID);
            return View(slideshow);
        }

        // POST: Slideshow/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SlideID,ImageID,SlideLink,Display,SlideOrder")] Slideshow slideshow)
        {
            if (ModelState.IsValid)
            {
                db.Entry(slideshow).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", slideshow.ImageID);
            return View(slideshow);
        }
        [Authorize(Roles = "Admin")]
        // GET: Slideshow/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Slideshow slideshow = db.Slideshows.Find(id);
            if (slideshow == null)
            {
                return HttpNotFound();
            }
            return View(slideshow);
        }

        // POST: Slideshow/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Slideshow slideshow = db.Slideshows.Find(id);
            db.Slideshows.Remove(slideshow);
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
