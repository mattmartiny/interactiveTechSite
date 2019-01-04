using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using InteractiveTechnologies.Models;
using Microsoft.AspNet.Identity;

namespace InteractiveTechnologies.Controllers
{
       

        


      
 
    public class MembersPagesController : Controller
    {
        private InteractiveTechEntities db = new InteractiveTechEntities();

        // GET: MembersPages
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            var membersPages = db.MembersPages.Include(m => m.AspNetRole).Include(m => m.Image);
            return View(membersPages.ToList());
        }

        // GET: MembersPages/Details/5

       




        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MembersPage membersPage = db.MembersPages.Find(id);
            if (membersPage == null)
            {
                return HttpNotFound();
            }
            return View(membersPage);
        }


        [Authorize(Roles = "Admin")]
        // GET: MembersPages/Create
        public ActionResult Create()
        {
            ViewBag.RoleId = new SelectList(db.AspNetRoles, "Id", "Name");
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName");
            return View();
        }

        // POST: MembersPages/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [Authorize(Roles = "Admin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PageID,RoleId,DateCreated,PageTitle,DisplayDate,ImageID,BodyText,ImageSrc")] MembersPage membersPage)
        {
            if (ModelState.IsValid)
            {
                membersPage.DateCreated = DateTime.Now;

                db.MembersPages.Add(membersPage);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.RoleId = new SelectList(db.AspNetRoles, "Id", "Name", membersPage.RoleId);
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", membersPage.ImageID);
            return View(membersPage);
        }

        // GET: MembersPages/Edit/5
        [Authorize(Roles = "Admin")]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MembersPage membersPage = db.MembersPages.Find(id);
            if (membersPage == null)
            {
                return HttpNotFound();
            }
            ViewBag.RoleId = new SelectList(db.AspNetRoles, "Id", "Name", membersPage.RoleId);
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", membersPage.ImageID);
            return View(membersPage);
        }

        // POST: MembersPages/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PageID,RoleId,DateCreated,PageTitle,DisplayDate,ImageID,BodyText")] MembersPage membersPage)
        {
            if (ModelState.IsValid)
            {


                membersPage.DateCreated = DateTime.Now;

                   db.Entry(membersPage).State = EntityState.Modified;
                  db.SaveChanges();
                return RedirectToAction("Index");
            }
         
            ViewBag.RoleId = new SelectList(db.AspNetRoles, "Id", "Name", membersPage.RoleId);
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", membersPage.ImageID);
            return View(membersPage);
        }

        // GET: MembersPages/Delete/5
        [Authorize(Roles = "Admin")]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MembersPage membersPage = db.MembersPages.Find(id);
            if (membersPage == null)
            {
                return HttpNotFound();
            }
            return View(membersPage);
        }

        // POST: MembersPages/Delete/5
        [Authorize(Roles = "Admin")]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            MembersPage membersPage = db.MembersPages.Find(id);
            db.MembersPages.Remove(membersPage);
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
