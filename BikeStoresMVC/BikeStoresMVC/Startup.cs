using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BikeStoresMVC.Startup))]
namespace BikeStoresMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
