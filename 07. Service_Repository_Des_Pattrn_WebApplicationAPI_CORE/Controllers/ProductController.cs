using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplicationAPI.Models;
using WebApplicationAPI.Services;

namespace WebApplicationAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        public IProductService _service;

        public ProductController(IProductService service)
        {
            _service = service;
        }


        [HttpGet]
        public IActionResult GetProducts()
        {
            List<Product> obj = _service.GetProducts();
            return Ok(obj);
        }


        [HttpGet("{id}")]
        public IActionResult GetProductsById(int id)
        {
            Product obj =_service.GetProductById(id);
            if (obj != null)
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
            _service.AddProduct(obj);
            return Ok(obj);
        }

        [HttpDelete]
        public IActionResult DeleteProduct(int id)
        {

            _service.DeleteProduct(id);
            //if (obj != null)
            {
                return Ok(new { Staus = "Product Deletes Successfully !" });
            }
            ////else
            //{
            //    return NotFound(new { Status = "Product could not be deleated as no record Found" });
            //}
        }

        [HttpPut("{id}")]
        public IActionResult EditProduct(Product obj)
        {
            if (obj != null)

           {
                _service.UpdateProduct(obj);
                return Ok(obj);
            }

            return NotFound(new { status = "Could not be updated" });
        }
    }
}
