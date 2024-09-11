using WebApplicationAPI.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
namespace WebApplicationAPI.Repository
{
    public class ProductRepository : IProductRepository
    {
        public ProductDbContext _context;
        public ProductRepository(ProductDbContext context)
        {
            _context = context;
        }
        [HttpGet]
        public List<Product> GetProducts()
        {
            List<Product> obj = _context.Products.ToList();
            return obj;
        }

        
        [HttpGet("{id}")]
        public Product GetProductById(int id)
        {
            Product obj = _context.Products.Find(id);
            return obj;
        }
        [HttpPost]
        public void AddProduct(Product obj)
        {
            _context.Products.Add(obj);
            _context.SaveChanges();
        }
        [HttpPut]
        public void UpdateProduct(Product obj)
        {
            _context.Products.Update(obj);
            _context.SaveChanges();
        }
        [HttpDelete]
        public void DeleteProduct(int id)
        {
            Product obj = _context.Products.Find(id);
            _context.Products.Remove(obj);
            _context.SaveChanges();
        }
    }


}
