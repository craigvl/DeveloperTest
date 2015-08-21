using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Logic
{
	public class ProcessManager
	{
		/// <summary>
		/// Gets all customers.
		/// </summary>
		/// <returns></returns>
		public List<DTO.Customer> GetCustomers()
		{

			throw new NotImplementedException();
		}

		/// <summary>
		/// Performs a search for products using the supplied search parameters and returns a list of Product objects
		/// </summary>
		/// <param name="searchParameters">The product search parameters.</param>
		/// <returns></returns>
		public List<DTO.Product> ProductSearch(DTO.ProductSearchParameters searchParameters)
		{
			throw new NotImplementedException();
		}

		/// <summary>
		/// Performs a search for products using the supplied search parameters and returns a list of Product objects
		/// The DiscountedSellPrice for the products is calculated based on the DiscountGroup associated with the
		/// specified customer
		/// </summary>
		/// <param name="customerId">The customer id.</param>
		/// <param name="searchParameters">The product search parameters.</param>
		/// <returns></returns>
		public List<DTO.Product> CustomerProductSearch(int customerId, DTO.ProductSearchParameters searchParameters)
		{
			throw new NotImplementedException();
		}
	}
}
