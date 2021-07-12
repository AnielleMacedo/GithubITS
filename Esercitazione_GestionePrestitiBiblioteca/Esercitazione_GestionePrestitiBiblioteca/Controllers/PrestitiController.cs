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
    [Authorize(Roles = "Amministratore")]
    public class PrestitiController : Controller
    {
        private ITS_GestionePrestitiBibliotecaEntities db = new ITS_GestionePrestitiBibliotecaEntities();

        // GET: Prestiti
        public ActionResult Index()
        {
            var prestito = db.Prestito.Include(p => p.Libro).Include(p => p.Studente);//inclui outras classes
            return View(prestito.ToList());
        }

        // GET: Prestiti/Details/5
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

        // GET: Prestiti/Create
        public ActionResult Create()
        {
            ViewBag.CodiceLibro = new SelectList(db.Libro, "Codice", "Autore");
            ViewBag.Matricola = new SelectList(db.Studente, "Matricola", "Nome");
            return View();
        }

       
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

        // GET: Prestiti/Edit/5
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

        // POST: Prestiti/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
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

        // GET: Prestiti/Delete/5
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

        // POST: Prestiti/Delete/5
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
