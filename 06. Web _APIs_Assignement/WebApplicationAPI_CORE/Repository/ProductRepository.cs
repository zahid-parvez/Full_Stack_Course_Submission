using WebApplicationAPI.Models;
using Microsoft.EntityFrameworkCore;
namespace WebApplicationAPI.Repository
{
    public class ProductRepository : IProductRepository
    {
        public ProductDbContext _context;
        public ProductRepository(ProductDbContext context)
        {
            _context = context;
        }
        public List<Product> GetProducts()
        {
            List<Product> obj = _context.Products.ToList();
            return obj;
        }

        public Product GetProductById(int id)
        {
            Product obj = _context.Products.Find(id);
            return obj;
        }

        public void AddProduct(Product obj)
        {
            _context.Products.Add(obj);
            _context.SaveChanges();
        }

        public void UpdateProduct(Product obj)
        {
            _context.Products.Update(obj);
            _context.SaveChanges();
        }

        public void DeleteProduct(int id)
        {
            Product obj = _context.Products.Find(id);
            _context.Products.Remove(obj);
            _context.SaveChanges();
        }
    }


}
