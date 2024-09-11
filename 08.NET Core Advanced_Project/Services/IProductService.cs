using WebApplicationAPI.Models;

namespace WebApplicationAPI.Services
{
    public interface IProductService
    {
        List<Product> GetProducts();
        Product GetProductById(int id);
        void AddProduct(Product obj);
        void DeleteProduct(int id);
        void UpdateProduct(Product obj);
        List<Product> GetProductsOutOfStock();
        List<String> GetCategory();
        List<Product> GetProductName(string name);
        List<Product> GetProductsByPriceRange(double minPrice, double maxPrice);

    }
}
