using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Esercitazione_GestionePrestitiBiblioteca.Models
{
    public class PrestitoViewModel
    {

        public Libro LibriList;
        public Prestito PrestitiList;

      
        public int IdPrestito { get; set; }


        public int CodiceLibro { get; set; } 


        public int Matricola { get; set; } 

        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:dd/MM/yyyy}")]
        [DataType(DataType.Date)]
        public System.DateTime DataPrestito { get; set; }

        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:dd/MM/yyyy}")]
        [DataType(DataType.Date)]

        public Nullable<System.DateTime> DataRestituzione { get; set; }

        //libro
        public int Codice { get; set; }

        public string Autore { get; set; }
        public string Titolo { get; set; }

        public string Editore { get; set; }

        public string Anno { get; set; }
        public string Luogo { get; set; }
        public int Pagine { get; set; }

        public string Classificazione { get; set; }

        public string Collocazione { get; set; }

        //studente
        public string Nome { get; set; }
        public string Cognome { get; set; }
        public string Email { get; set; }
        public string Classe { get; set; }
        public int Count { get; set; }



    }
}