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
    public class ServicesController : Controller
    {
        private InteractiveTechEntities db = new InteractiveTechEntities();
        [Authorize(Roles = "Admin")]
        // GET: Services
        public ActionResult Index()
        {
            var services = db.Services.Include(s => s.Image);
            return View(services.ToList());
        }

        // GET: Services/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Service service = db.Services.Find(id);
            if (service == null)
            {
                return HttpNotFound();
            }
            return View(service);
        }
        [Authorize(Roles = "Admin")]
        // GET: Services/Create
        public ActionResult Create()
        {
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName");
            return View();
        }

        // POST: Services/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ServicePageID,Pdf,ImageID,BodyText")] Service service, HttpPostedFileBase Download)
        {
            if (ModelState.IsValid)
            {
                if (Download != null)
                {

                    string filename = Download.FileName;

                    string ext = filename.Substring(filename.LastIndexOf('.'));

                    string[] goodExts = { ".pdf" };

                    if (goodExts.Contains(ext.ToLower()))
                    {
                        Download.SaveAs(Server.MapPath("~/Content/PDFs/" + filename));

                    }

                    else
                    {
                        filename = null;
                    }
                    service.Pdf = filename;
                }






                db.Services.Add(service);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", service.ImageID);
            return View(service);
        }
        [Authorize(Roles = "Admin")]
        // GET: Services/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Service service = db.Services.Find(id);
            if (service == null)
            {
                return HttpNotFound();
            }
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", service.ImageID);
            return View(service);
        }

        // POST: Services/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ServicePageID,Pdf,ImageID,BodyText")] Service service, HttpPostedFileBase Download)
        {
            if (ModelState.IsValid)
            {

                if (Download != null)
                {

                    string filename = Download.FileName;

                    string ext = filename.Substring(filename.LastIndexOf('.'));

                    string[] goodExts = { ".pdf", ".zip" };

                    if (goodExts.Contains(ext.ToLower()))
                    {
                        Download.SaveAs(Server.MapPath("~/Content/PDFs/" + filename));

                    }

                    else
                    {

                        filename = null;
                    }
                   service.Pdf = filename;
                }
                db.Entry(service).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Details/1");
            }
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", service.ImageID);
            return View(service);
        }
        [Authorize(Roles = "")]
        // GET: Services/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Service service = db.Services.Find(id);
            if (service == null)
            {
                return HttpNotFound();
            }
            return View(service);
        }

        // POST: Services/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Service service = db.Services.Find(id);
            db.Services.Remove(service);
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
