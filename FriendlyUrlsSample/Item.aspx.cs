using System;
using FriendlyUrlsSample.Data;
using Microsoft.AspNet.FriendlyUrls;

namespace FriendlyUrlsSample
{
    public partial class Item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.GetFriendlyUrlSegments()[0];
            var dao = new ProductDao();
            var product = dao.GetProductById(Convert.ToInt32(id));
            Id.Text = product.Id.ToString();
            Name.Text = product.Name;
            Description.Text = product.Description;
        }
    }
}