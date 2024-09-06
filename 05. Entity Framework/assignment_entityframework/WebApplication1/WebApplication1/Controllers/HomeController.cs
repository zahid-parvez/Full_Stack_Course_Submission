using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        //public HomeController(ILogger<HomeController> logger)
        //{
        //    _logger = logger;
        //}

        SalesDbContext _context;

        public HomeController(SalesDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            List<Product> productList = _context.products.ToList();
            return View(productList);
        }

        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Product obj)
        {
            if (ModelState.IsValid)
            {
                _context.products.Add(obj);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            else { return View(); }
            }


        public IActionResult Details(int id)
        {
            Product obj = _context.products.Find(id);
            return View(obj);
        }



        [HttpGet]
        public IActionResult Edit(int id)
        {
            Product obj = _context.products.Find(id);
            //_context.products.Update(obj);
            //_context.SaveChanges();
            return View(obj);
        }

        [HttpPost]
        public IActionResult Edit(Product obj)
        {
            //Product obj = _context.products.Find(id);
            _context.products.Update(obj);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }


        [HttpGet]
        public IActionResult Delete(int id)
        {
            Product obj = _context.products.Find(id);
            //_context.SaveChanges();
            return View(obj);
        }

        [HttpPost]
        [ActionName("Delete")]
        public IActionResult DeleteConfirm(int id)
        {
            Product obj = _context.products.Find(id);
            _context.products.Remove(obj);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }



        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult Login()
        {
            return View();
        }

        public IActionResult About()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
