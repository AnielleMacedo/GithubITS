using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Esercitazione_GestionePrestitiBiblioteca.Startup))]
namespace Esercitazione_GestionePrestitiBiblioteca
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
