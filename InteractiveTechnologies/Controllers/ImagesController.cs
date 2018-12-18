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
    [Authorize(Roles = "Admin")]
    public class ImagesController : Controller
    {
        private InteractiveTechEntities db = new InteractiveTechEntities();

        // GET: Images
        public ActionResult Index()
        {
            return View(db.Images.ToList());
        }

        public ActionResult _NewImage()
        {
            return View();
        }

        // POST: Images/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult _NewImage([Bind(Include = "ImageID,ImageName,Description,ImageAlt,ImageSrc")] Image image, HttpPostedFileBase Image)
        {
            if (ModelState.IsValid)
            {

                string imageName = "noimage.png";

                if (Image != null)
                {

                    imageName = Image.FileName;

                    string ext = imageName.Substring(imageName.LastIndexOf('.'));

                    string[] goodExts = { ".jpg", ".jpeg", ".png", ".gif" };

                    if (goodExts.Contains(ext.ToLower()))
                    {
                        Image.SaveAs(Server.MapPath("~/Content/Images/Products/" + imageName));

                    }
                    else
                    {

                        imageName = "noimage.png";
                    }
                    image.ImageSrc = imageName;
                }

                db.Images.Add(image);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(image);
        }



        // GET: Images/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Image image = db.Images.Find(id);
            if (image == null)
            {
                return HttpNotFound();
            }
            return View(image);
        }

        // GET: Images/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Images/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ImageID,ImageName,Description,ImageAlt,ImageSrc")] Image image, HttpPostedFileBase Image)
        {
            if (ModelState.IsValid)
            {

                string imageName = "noimage.png";

                if (Image != null)
                {

                    imageName = Image.FileName;

                    string ext = imageName.Substring(imageName.LastIndexOf('.'));

                    string[] goodExts = { ".jpg", ".jpeg", ".png", ".gif" };

                    if (goodExts.Contains(ext.ToLower()))
                    {
                        Image.SaveAs(Server.MapPath("~/Content/Images/Products/" + imageName));

                    }
                    else
                    {

                        imageName = "noimage.png";
                    }
                   image.ImageSrc = imageName;
                }

                db.Images.Add(image);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(image);
        }

        // GET: Images/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Image image = db.Images.Find(id);
            if (image == null)
            {
                return HttpNotFound();
            }
            return View(image);
        }

        // POST: Images/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ImageID,ImageName,Description,ImageAlt,ImageSrc")] Image image)
        {
            if (ModelState.IsValid)
            {
                db.Entry(image).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(image);
        }

        // GET: Images/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Image image = db.Images.Find(id);
            if (image == null)
            {
                return HttpNotFound();
            }
            return View(image);
        }

        // POST: Images/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Image image = db.Images.Find(id);
            db.Images.Remove(image);
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
