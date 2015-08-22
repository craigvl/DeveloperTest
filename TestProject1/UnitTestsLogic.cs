using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Logic;
using System.Linq;
using DTO.Entities;
using System.Collections.Generic;
using Moq;
using System.Data.Entity;
using DTO.Context;
using DTO;

namespace Test
{
    [TestClass]
    public class UnitTestsLogic
    {

        [TestMethod]
        public void ProcessManagerGetCustomers()
        {
            DTOContext _DTOC = new DTOContext();
            ProcessManager _ProcessManager = new ProcessManager(_DTOC);
            List<Customer> customers = _ProcessManager.GetCustomers();
            Assert.AreEqual(customers.Count(), _DTOC.Customers.Count());
        }

        [TestMethod]
        public void ProcessManagerProductSearchAll()
        {
            DTOContext _DTOC = new DTOContext();
            ProcessManager _ProcessManager = new ProcessManager(_DTOC);
            ProductSearchParameters _ProductSearchParameters = new ProductSearchParameters();
            List<Product> products = _ProcessManager.ProductSearch(_ProductSearchParameters);
            Assert.AreEqual(products.Count(), _DTOC.Products.Count());
        }

        [TestMethod]
        public void ProcessManagerProductSearchBrands()
        {
            DTOContext _DTOC = new DTOContext();
            ProcessManager _ProcessManager = new ProcessManager(_DTOC);
            ProductSearchParameters _ProductSearchParameters = new ProductSearchParameters { BrandIds = new List<int>(new int[] { 1, 2, 3 }) };
            List<Product> products = _ProcessManager.ProductSearch(_ProductSearchParameters);
            Assert.IsTrue(products.Count() < _DTOC.Products.Count());
        }

        [TestMethod]
        public void ProcessManagerProductSearchSizes()
        {
            DTOContext _DTOC = new DTOContext();
            ProcessManager _ProcessManager = new ProcessManager(_DTOC);
            ProductSearchParameters _ProductSearchParameters = new ProductSearchParameters { SizeIds = new List<int>(new int[] { 1, 2, 3 }) };
            List<Product> products = _ProcessManager.ProductSearch(_ProductSearchParameters);
            Assert.IsTrue(products.Count() < _DTOC.Products.Count());
        }

        [TestMethod]
        public void ProcessManagerProductSearchColours()
        {
            DTOContext _DTOC = new DTOContext();
            ProcessManager _ProcessManager = new ProcessManager(_DTOC);
            ProductSearchParameters _ProductSearchParameters = new ProductSearchParameters { ColourIds = new List<int>(new int[] { 1, 2, 3 }) };
            List<Product> products = _ProcessManager.ProductSearch(_ProductSearchParameters);
            Assert.IsTrue(products.Count() < _DTOC.Products.Count());
        }

        [TestMethod]
        public void ProcessManagerCustomerSearch()
        {
            DTOContext _DTOC = new DTOContext();
            ProcessManager _ProcessManager = new ProcessManager(_DTOC);
            ProductSearchParameters _ProductSearchParameters = new ProductSearchParameters { ColourIds = new List<int>(new int[] { 1, 2, 3 }) };
            Customer _Customer = _DTOC.Customers.Where(i => i.CustomerId == 3).FirstOrDefault();
            List<Product> products = _ProcessManager.CustomerProductSearch(_Customer.CustomerId, _ProductSearchParameters);
            Assert.IsTrue(products.Count() < _DTOC.Products.Count());
        }

        [TestMethod]
        public void ProcessManagerCustomerDiscount()
        {
            //Test function that calculates discount for a customer
            DTOContext _DTOC = new DTOContext();
            ProcessManager _ProcessManager = new ProcessManager(_DTOC);
            //Since discount is more than cost price should return cost price.
            Assert.IsTrue(_ProcessManager.CalculateDiscountedPrice(50, 100, 51) == 51);
            //Since discount is less than cost price should return discount price.
            Assert.IsTrue(_ProcessManager.CalculateDiscountedPrice(50, 100, 49) == 50);
        }

        [TestMethod]
        public void ProcessManagerStringSearch()
        {
            DTOContext _DTOC = new DTOContext();
            ProcessManager _ProcessManager = new ProcessManager(_DTOC);
            ProductSearchParameters _ProductSearchParameters = new ProductSearchParameters { SearchString = "Tee Nike" };
            List<Product> products = _ProcessManager.ProductSearch (_ProductSearchParameters);
            Assert.IsTrue(products.Count() < _DTOC.Products.Count());
        }
    }
}
