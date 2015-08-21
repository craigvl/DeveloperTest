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
    }
}
