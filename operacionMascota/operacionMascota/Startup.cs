using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(operacionMascota.Startup))]
namespace operacionMascota
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
