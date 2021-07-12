using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using GestioneBiblio2.Models;

namespace GestioneBiblio2.Controllers
{
    public class DashboardController : Controller
    {
        private GestioneBibliotecaEntities db = new GestioneBibliotecaEntities();

        // GET: Dashboard
        public ActionResult Index()
        {
            var prestito = db.Prestito.Include(p => p.Libro).Include(p => p.Studente);
            return View(prestito.ToList());
        }

        // GET: Dashboard/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Prestito prestito = db.Prestito.Find(id);
            if (prestito == null)
            {
                return HttpNotFound();
            }
            return View(prestito);
        }

        // GET: Dashboard/Create
        public ActionResult Create()
        {
            ViewBag.CodiceLibro = new SelectList(db.Libro, "Codice", "Autore");
            ViewBag.Matricola = new SelectList(db.Studente, "Matricola", "Nome");
            return View();
        }

        // POST: Dashboard/Create
        // Per la protezione da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per altri dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdPrestito,CodiceLibro,Matricola,DataPrestito,DataRestituzione")] Prestito prestito)
        {
            if (ModelState.IsValid)
            {
                db.Prestito.Add(prestito);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CodiceLibro = new SelectList(db.Libro, "Codice", "Autore", prestito.CodiceLibro);
            ViewBag.Matricola = new SelectList(db.Studente, "Matricola", "Nome", prestito.Matricola);
            return View(prestito);
        }

        // GET: Dashboard/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Prestito prestito = db.Prestito.Find(id);
            if (prestito == null)
            {
                return HttpNotFound();
            }
            ViewBag.CodiceLibro = new SelectList(db.Libro, "Codice", "Autore", prestito.CodiceLibro);
            ViewBag.Matricola = new SelectList(db.Studente, "Matricola", "Nome", prestito.Matricola);
            return View(prestito);
        }

        // POST: Dashboard/Edit/5
        // Per la protezione da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per altri dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdPrestito,CodiceLibro,Matricola,DataPrestito,DataRestituzione")] Prestito prestito)
        {
            if (ModelState.IsValid)
            {
                db.Entry(prestito).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CodiceLibro = new SelectList(db.Libro, "Codice", "Autore", prestito.CodiceLibro);
            ViewBag.Matricola = new SelectList(db.Studente, "Matricola", "Nome", prestito.Matricola);
            return View(prestito);
        }

        // GET: Dashboard/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Prestito prestito = db.Prestito.Find(id);
            if (prestito == null)
            {
                return HttpNotFound();
            }
            return View(prestito);
        }

        // POST: Dashboard/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Prestito prestito = db.Prestito.Find(id);
            db.Prestito.Remove(prestito);
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
