//------------------------------------------------------------------------------
// <auto-generated>
//     Codice generato da un modello.
//
//     Le modifiche manuali a questo file potrebbero causare un comportamento imprevisto dell'applicazione.
//     Se il codice viene rigenerato, le modifiche manuali al file verranno sovrascritte.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GestioneBiblio2.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class GestioneBibliotecaEntities : DbContext
    {
        public GestioneBibliotecaEntities()
            : base("name=GestioneBibliotecaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Libro> Libro { get; set; }
        public virtual DbSet<Prestito> Prestito { get; set; }
        public virtual DbSet<Studente> Studente { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
    }
}
