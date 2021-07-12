using Esercitazione_GestionePrestitiBiblioteca.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.SqlServer;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Esercitazione_GestionePrestitiBiblioteca.Controllers
{
    [Authorize(Roles = "Amministratore")]
    public class DashboardController : Controller
    {
        //connection db
        public ITS_GestionePrestitiBibliotecaEntities db = new ITS_GestionePrestitiBibliotecaEntities();


        public ActionResult Index() //elenco libri in prestito
        {

            List<Libro> LibriList = db.Libro.ToList();
            List<Prestito> PrestitiList = db.Prestito.ToList();

            ViewData["jointables"] = from Lib in LibriList
                                     join Prest in PrestitiList on Lib.Codice equals Prest.CodiceLibro
                                     orderby Lib.Titolo
                                     select new PrestitoViewModel
                                     {
                                         LibriList = Lib,
                                         PrestitiList = Prest,


                                     };

            return View(ViewData["jointables"]);



        }



        public ActionResult PrestitoScaduto()
        {
            //select Studente.Nome,count(*) as NumeroLibriInPresiti
            // from Libro
            //join Prestito on Libro.Codice = Prestito.CodiceLibro
            //join Studente on Studente.Matricola = Prestito.Matricola
            //where DATEDIFF(DAY, DataPrestito, GETDATE()) > 30 and Prestito.DataRestituzione is not null
            // GROUP BY(Studente.Nome)
            // having count(*)= 1
 

            List<PrestitoViewModel> listaPrestitoVM = new List<PrestitoViewModel>();

            var listaPrestiti = (from Pres in db.Prestito
                                 join Lib in db.Libro on Pres.CodiceLibro equals Lib.Codice
                                 join Stu in db.Studente on Pres.Matricola equals Stu.Matricola
                                 where SqlFunctions.DateDiff("Day", Pres.DataPrestito, DateTime.Now).Value > 30 && Pres.DataRestituzione != null
                                 select new
                                 {
                                     Stu.Nome,
                                     Stu.Cognome,
                                     Pres.DataPrestito,
                                     Pres.DataRestituzione,
                                     Lib.Titolo


                                 }).ToList();


            foreach (var item in listaPrestiti)
            {
                PrestitoViewModel preVM = new PrestitoViewModel(); 
                preVM.Nome = item.Nome;
                preVM.Cognome = item.Cognome;
                preVM.DataPrestito = item.DataPrestito;
                preVM.DataRestituzione = item.DataRestituzione;
                preVM.Titolo = item.Titolo;

                listaPrestitoVM.Add(preVM);
            }

            return View(listaPrestitoVM);



        }


        public ActionResult StoricoPrestito()
        {

            List<PrestitoViewModel> listaPrestitoVM = new List<PrestitoViewModel>();

            var listaPrestiti = (from Pres in db.Prestito
                                 join Lib in db.Libro on Pres.CodiceLibro equals Lib.Codice
                                 join Stu in db.Studente on Pres.Matricola equals Stu.Matricola
                                 orderby Pres.DataPrestito
                                 select new
                                 {
                                     Pres.DataPrestito,
                                     Pres.DataRestituzione,
                                     Pres.CodiceLibro,
                                     Lib.Autore,
                                     Lib.Titolo,
                                     Stu.Matricola,
                                     Stu.Nome,
                                     Stu.Cognome,
                                   

                                 }).ToList();


            foreach (var item in listaPrestiti)
            {
                PrestitoViewModel preVM = new PrestitoViewModel(); //ViewModel
                preVM.DataPrestito = item.DataPrestito;
                preVM.DataRestituzione = item.DataRestituzione;
                preVM.CodiceLibro = item.CodiceLibro;
                preVM.Autore = item.Autore;
                preVM.Titolo = item.Titolo;
                preVM.Matricola = item.Matricola;
                preVM.Nome = item.Nome;
                preVM.Cognome = item.Cognome;


                listaPrestitoVM.Add(preVM);
            }

            return View(listaPrestitoVM);

        }

        public ActionResult UnoLibroInPrestito()
        {
         
            List<PrestitoViewModel> listaPrestitoVM = new List<PrestitoViewModel>();
         
            var listaPrestiti = (from Pres in db.Prestito
                                 join Lib in db.Libro on Pres.CodiceLibro equals Lib.Codice
                                 join Stu in db.Studente on Pres.Matricola equals Stu.Matricola
                                 group Stu by Stu.Nome into StuGroup
                                 where StuGroup.Count()==1 //equivale ao having
                                 
                                 select new
                                 {
                                     
                                     Nome =StuGroup.Key,
                                     //Cognome = StuGroup.Key,
                                     Count =StuGroup.Count(),
                                     
                                 }).ToList();
            

            foreach (var item in listaPrestiti)
            {
                PrestitoViewModel preVM = new PrestitoViewModel(); //ViewModel
                preVM.Nome = item.Nome;
               // preVM.Cognome = item.Cognome;
                preVM.Count = item.Count;
               

                listaPrestitoVM.Add(preVM);
            }
            
            return View(listaPrestitoVM);

        }

       





    }
}
