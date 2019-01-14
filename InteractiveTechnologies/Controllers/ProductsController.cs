using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using InteractiveTechnologies.Models;

namespace InteractiveTechnologies.Controllers
{
    public class ProductsController : Controller
    {
        private InteractiveTechEntities db = new InteractiveTechEntities();

        // GET: Products
        public ActionResult Index()
        {

            var order = from p in db.Products
                        orderby p.ProductOrder
                        select p;
                     
            
            return View(order.ToList());
        }

        // GET: Products/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }




        // GET: Products/Details/5
        public ActionResult TechSpecs(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }




        [Authorize(Roles = "Admin")]
        // GET: Products/Create
        public ActionResult Create()
        {
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName");
            ViewBag.Image2ID = new SelectList(db.Images, "ImageID", "ImageName");
            ViewBag.Image3ID = new SelectList(db.Images, "ImageID", "ImageName");
            ViewBag.Image4ID = new SelectList(db.Images, "ImageID", "ImageName");
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName");
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductID,CategoryID,ProductName,ProductDescription,ImageID,Image2ID,Image3ID,Image4ID,DisplayProduct,ProductOrder,Download,Specs")] Product product, HttpPostedFileBase Download)
        {
            


            if (ModelState.IsValid)
            {
                
                if (Download != null)
                {

                    string filename = Download.FileName;

                    string ext = filename.Substring(filename.LastIndexOf('.'));

                    string[] goodExts = { ".pdf", ".zip"};

                    if (goodExts.Contains(ext.ToLower()))
                    {
                      Download.SaveAs(Server.MapPath("~/Content/Downloads" + filename));

                    }

                    else
                    {
                        filename = null;
                    }
                    product.Download = filename;
                }



                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", product.ImageID);
            ViewBag.Image2ID = new SelectList(db.Images, "ImageID", "ImageName", product.Image2ID);
            ViewBag.Image3ID = new SelectList(db.Images, "ImageID", "ImageName", product.Image3ID);
            ViewBag.Image4ID = new SelectList(db.Images, "ImageID", "ImageName", product.Image4ID);
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName", product.CategoryID);
            return View(product);
        }
        [Authorize(Roles = "Admin")]
        // GET: Products/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
          
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", product.ImageID);
            ViewBag.Image2ID = new SelectList(db.Images, "ImageID", "ImageName", product.Image2ID);
            ViewBag.Image3ID = new SelectList(db.Images, "ImageID", "ImageName", product.Image3ID);
            ViewBag.Image4ID = new SelectList(db.Images, "ImageID", "ImageName", product.Image4ID);
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName", product.CategoryID);
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductID,CategoryID,ProductName,ProductDescription,ImageID,Image2ID,Image3ID,Image4ID,DisplayProduct,ProductOrder,Download,Specs")] Product product, HttpPostedFileBase Download)
        {
            if (ModelState.IsValid)
            {

                

                if (Download != null)
                {

                  string filename = Download.FileName ;

                    string ext = filename.Substring(filename.LastIndexOf('.'));

                    string[] goodExts = { ".pdf", ".zip" };

                    if (goodExts.Contains(ext.ToLower()))
                    {
                        Download.SaveAs(Server.MapPath("~/Content/Downloads" + filename));

                    }

                    else
                    {

                        filename = null;
                    }
                 product.Download = filename;
                }

          
                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "ImageName", product.ImageID);
            ViewBag.Image2ID = new SelectList(db.Images, "ImageID", "ImageName", product.Image2ID);
            ViewBag.Image3ID = new SelectList(db.Images, "ImageID", "ImageName", product.Image3ID);
            ViewBag.Image4ID = new SelectList(db.Images, "ImageID", "ImageName", product.Image4ID);
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName", product.CategoryID);
            return View(product);
        }
        [Authorize(Roles = "Admin")]
        // GET: Products/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Product product = db.Products.Find(id);
            db.Products.Remove(product);
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
