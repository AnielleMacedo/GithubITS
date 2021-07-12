using System.Web;
using System.Web.Mvc;

namespace Esercitazione_GestionePrestitiBiblioteca
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
