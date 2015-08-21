using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO.Entities;
using DTO.Context;

namespace Logic
{
	public class ProcessManager
	{     
        private DTOContext _context;

        public ProcessManager(DTOContext context) 
        { 
            _context = context; 
        } 
		/// <summary>
		/// Gets all customers.
		/// </summary>
		/// <returns></returns>
		public List<Customer> GetCustomers()
		{
            return _context.Customers.ToList();
		}

		/// <summary>
		/// Performs a search for products using the supplied search parameters and returns a list of Product objects
		/// </summary>
		/// <param name="searchParameters">The product search parameters.</param>
		/// <returns></returns>
		public List<Product> ProductSearch(DTO.ProductSearchParameters searchParameters)
		{
            IQueryable<Product> Products;
            //Get all products first
            Products = _context.Products;

            if (searchParameters.BrandIds.Count() > 0)
            {
                Products = Products.Where(x => searchParameters.BrandIds.Any(i => i == x.BrandId ));
            }
            
            return Products.ToList();
		}

		/// <summary>
		/// Performs a search for products using the supplied search parameters and returns a list of Product objects
		/// The DiscountedSellPrice for the products is calculated based on the DiscountGroup associated with the
		/// specified customer
		/// </summary>
		/// <param name="customerId">The customer id.</param>
		/// <param name="searchParameters">The product search parameters.</param>
		/// <returns></returns>
		public List<Product> CustomerProductSearch(int customerId, DTO.ProductSearchParameters searchParameters)
		{
			throw new NotImplementedException();
		}
	}
}
