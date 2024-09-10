using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplicationAPI.Models;

namespace WebApplicationAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        public ProductDbContext _context;

        public ProductController(ProductDbContext context)
        {
            _context = context;
        }


        [HttpGet]
        public IActionResult GetProducts()
        {
            List<Product> obj = _context.Products.ToList();
            return Ok(obj);
        }


        [HttpGet("{id}")]
        public IActionResult GetProductsById(int id)
        {
            Product obj = _context.Products.Find(id);
            if(obj != null)
            {
                return Ok(obj);
            }
            else
            {
                return NotFound(new { Status = "Product Details Not Found" });
            }
        }


        [HttpPost]
        public IActionResult AddProduct(Product obj)
        {
            _context.Products.Add(obj);
            _context.SaveChanges();
            return Ok(obj);
        }

        [HttpDelete]
        public IActionResult DeleteProduct(int id)
        {
            Product obj = _context.Products.Find(id);
            if(obj != null)
            {
                _context.Products.Remove(obj);
                _context.SaveChanges();
                return Ok(new { Staus = "Product Deletes Successfully !" });
            }
            else
            {
                return NotFound(new { Status = "Product could not be deleated as no record Found" });
            }
        }

        [HttpPut("{id}")]
        public IActionResult EditProduct(Product obj)
        {
            if(obj != null)

           { _context.Products.Update(obj);
            _context.SaveChanges();
            return Ok(obj);
            }

            return NotFound(new { status = "Could not be updated" });
        }
    }
}
