using WebApplicationAPI.Repository;
using WebApplicationAPI.Models;
using Microsoft.EntityFrameworkCore;

namespace WebApplicationAPI.Services
{
    public class ProductService : IProductService
    {
        public IProductRepository _repository;
        public ProductService(IProductRepository repository)
        {
            _repository = repository;
        }
        public List<Product> GetProducts()
        {
            List<Product> obj = _repository.GetProducts();
            return obj;
        }

        public Product GetProductById(int id)
        {
            Product obj = _repository.GetProductById(id);
            return obj;
        }

        public void AddProduct(Product obj)
        {
            _repository.AddProduct(obj);
        }

        public void UpdateProduct(Product obj)
        {
            _repository.UpdateProduct(obj);
        }

        public void DeleteProduct(int id)
        {
            _repository.DeleteProduct(id);
        }

    }
}
