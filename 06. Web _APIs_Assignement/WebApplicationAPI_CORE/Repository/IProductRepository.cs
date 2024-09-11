using WebApplicationAPI.Models;

namespace WebApplicationAPI.Repository
{ 

public interface IProductRepository
    {
        List<Product> GetProducts();
        Product GetProductById(int id);
        void AddProduct(Product obj);
        void DeleteProduct(int id);
        void UpdateProduct(Product obj);
    }
}
