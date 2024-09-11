using WebApplicationAPI.Repository;
using WebApplicationAPI.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;

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

        public List<Product> GetProductsOutOfStock()
        {
            List<Product> obj = _repository.GetProducts();
            List<Product> outOfStockProducts = obj.Where(p => p.Quantity == 0).ToList();
            return outOfStockProducts;
        }

        public List<string> GetCategory()
        {
            List<Product> obj = _repository.GetProducts();
            return obj.Select(p => p.ProductName).Distinct().ToList();
        }
        public List<Product> GetProductName(String name)
        {
            List<Product> obj = _repository.GetProducts();
            return obj.Where(p => p.ProductName == name).ToList();
        }

        public List<Product> GetProductsByPriceRange(double minPrice, double maxPrice)
        {
            List<Product> obj = _repository.GetProducts();
            return obj.Where(p => p.UnitPrice >= minPrice && p.UnitPrice <= maxPrice).ToList();
        }
    }
}
