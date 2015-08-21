using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
	public class Product
	{
		public int ProductId { get; set; }
		public string ProductName { get; set; }
		public decimal CostPrice { get; set; }
		public decimal SellPrice { get; set; }
		public decimal? DiscountedSellPrice { get; set; }
		public string Brand { get; set; }
		public string Colour { get; set; }
		public string Size { get; set; }
	}
}
