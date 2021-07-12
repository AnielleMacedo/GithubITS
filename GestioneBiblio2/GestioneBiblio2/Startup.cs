using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GestioneBiblio2.Startup))]
namespace GestioneBiblio2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
