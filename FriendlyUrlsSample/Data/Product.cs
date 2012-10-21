using System.Collections.Generic;

namespace FriendlyUrlsSample.Data
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }

    public class ProductDao
    {
        private List<Product> Products { get; set; }

        public ProductDao()
        {
            Products = new List<Product>{
                new Product{Id=1,Name="洗濯機",Description="全自動"},
                new Product{Id=2,Name="掃除機",Description="すべてすう"},
                new Product{Id=3,Name="オーブン",Description="ウルトラ高温"},
            };
        }

        public List<Product> GetAllProducts()
        {
            return Products;
        }

        public Product GetProductById(int id)
        {
            return Products.Find(p => p.Id == id);
        }
    }
}