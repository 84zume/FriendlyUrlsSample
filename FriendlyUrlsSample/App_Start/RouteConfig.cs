using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace FriendlyUrlsSample
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.EnableFriendlyUrls();
        }
    }
}
