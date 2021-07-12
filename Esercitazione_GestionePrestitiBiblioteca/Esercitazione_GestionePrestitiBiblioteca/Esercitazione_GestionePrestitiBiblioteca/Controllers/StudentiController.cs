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
    
    public class StudentiController : Controller
    {
        private ITS_GestionePrestitiBibliotecaEntities db = new ITS_GestionePrestitiBibliotecaEntities();

        // GET: Studenti
        [Authorize(Roles = "Amministratore")]
        public ActionResult Index()
        {
            return View(db.Studente.ToList());
        }

        [Authorize(Roles = "Studente")]
        public ActionResult Profilo() //profilo privato studente
        {
            return View();
        }


        public ActionResult Elenco()
        {

            //var studente = db.Studente.Include(s => s.Corso);
            return View(db.Studente.ToList());

        }


        // GET: Studenti/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Studente studente = db.Studente.Find(id);
            if (studente == null)
            {
                return HttpNotFound();
            }
            return View(studente);
        }

        [Authorize(Roles = "Amministratore")]
        // GET: Studenti/Create
        public ActionResult Create()
        {
            return View();
        }

      

        [Authorize(Roles = "Amministratore")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Matricola,Nome,Cognome,Email,Classe")] Studente studente)
        {
            if (ModelState.IsValid)
            {
                db.Studente.Add(studente);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(studente);
        }

        // GET: Studenti/Edit/5
        [Authorize(Roles = "Amministratore")]

        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Studente studente = db.Studente.Find(id);
            if (studente == null)
            {
                return HttpNotFound();
            }
            return View(studente);
        }

        [Authorize(Roles = "Amministratore")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Matricola,Nome,Cognome,Email,Classe")] Studente studente)
        {
            if (ModelState.IsValid)
            {
                db.Entry(studente).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(studente);
        }

        [Authorize(Roles = "Amministratore")]
        // GET: Studenti/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Studente studente = db.Studente.Find(id);
            if (studente == null)
            {
                return HttpNotFound();
            }
            return View(studente);
        }

        // POST: Studenti/Delete/5
        [Authorize(Roles = "Amministratore")]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Studente studente = db.Studente.Find(id);
            db.Studente.Remove(studente);
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
