using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Esercitazione_GestionePrestitiBiblioteca.Models;

namespace Esercitazione_GestionePrestitiBiblioteca.Controllers
{
    public class LibriController : Controller
    {
        private ITS_GestionePrestitiBibliotecaEntities db = new ITS_GestionePrestitiBibliotecaEntities();

       
        [Authorize(Roles = "Amministratore")]
        public ActionResult Index() //view per Admin
        {
            return View(db.Libro.ToList());
        }

       
        [AllowAnonymous]
        public ActionResult Elenco() //view accessibile a Studenti e atutti
        {
            return View(db.Libro.ToList());
        }

       

        [AllowAnonymous]
        public ActionResult Details(int? id)
        {
           
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Libro libro = db.Libro.Find(id);
            if (libro == null)
            {
                return HttpNotFound();
            }
            return View(libro);
        }

        // GET: Libri/Create
        [Authorize(Roles = "Amministratore")]
        public ActionResult Create()
        {
            return View();
        }

        [Authorize(Roles = "Amministratore")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Codice,Autore,Titolo,Editore,Anno,Luogo,Pagine,Classificazione,Collocazione")] Libro libro)
        {
            if (ModelState.IsValid)
            {
                db.Libro.Add(libro);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(libro);
        }

      
        [Authorize(Roles = "Amministratore")]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Libro libro = db.Libro.Find(id);
            if (libro == null)
            {
                return HttpNotFound();
            }
            return View(libro);
        }

        [Authorize(Roles = "Amministratore")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Codice,Autore,Titolo,Editore,Anno,Luogo,Pagine,Classificazione,Collocazione")] Libro libro)
        {
            if (ModelState.IsValid)
            {
                db.Entry(libro).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(libro);
        }

      
        [Authorize(Roles = "Amministratore")]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Libro libro = db.Libro.Find(id);
            if (libro == null)
            {
                return HttpNotFound();
            }
            return View(libro);
        }

        [Authorize(Roles = "Amministratore")]
        // POST: Libri/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Libro libro = db.Libro.Find(id);
            db.Libro.Remove(libro);
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
