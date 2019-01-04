using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using InteractiveTechnologies.Models;
using X.PagedList;

namespace InteractiveTechnologies.Controllers
{     public class WhatsNewsController : Controller
    {
        private InteractiveTechEntities db = new InteractiveTechEntities();



        // GET: WhatsNews
        public ActionResult Index(string sortOrder, string currentFilter, string searchString, int? page)
        {
           
            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var students = from s in db.WhatsNews
                           select s;

            if (!String.IsNullOrEmpty(searchString))
            {
                students = students.Where(s => s.HeaderText.Contains(searchString)
                                       || s.BodyText.Contains(searchString));
            }
            switch (sortOrder)
            {
                    default:  // Date ascending 
                    students = students.OrderBy(s => s.Date);
                    break;
            }



       
            int pageNumber = (page ?? 1);




            var whatsNews = db.WhatsNews.Include(w => w.Image);
            return View(whatsNews.OrderBy(i => i.Date).ToPagedList(page ?? 1, 4));




        }


        public ActionResult IndexList(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var students = from s in db.WhatsNews
                           select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                students = students.Where(s => s.HeaderText.Contains(searchString)
                                       || s.BodyText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    students = students.OrderByDescending(s => s.HeaderText);
                    break;
                case "name":
                    students = students.OrderBy(s => s.HeaderText);
                    break;
                case "date_desc":
                    students = students.OrderByDescending(s => s.Date);
                    break;
                default:  // Date ascending 
                    students = students.OrderBy(s => s.Date);
                    break;
            }

            int pageSize = 8;
            int pageNumber = (page ?? 1);




            var whatsNews = db.WhatsNews.Include(w => w.Image);
            return View(whatsNews.ToPagedList(pageNumber, pageSize));
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
