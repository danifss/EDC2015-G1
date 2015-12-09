using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EDC2015_G1_Project.Startup))]
namespace EDC2015_G1_Project
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
