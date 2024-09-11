﻿using WebApplicationAPI.Models;

namespace WebApplicationAPI.Services
{
    public interface IProductService
    {
        List<Product> GetProducts();
        Product GetProductById(int id);
        void AddProduct(Product obj);
        void DeleteProduct(int id);
        void UpdateProduct(Product obj);

    }
}
