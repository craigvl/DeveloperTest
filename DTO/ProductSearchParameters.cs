using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
	public class ProductSearchParameters
	{
		public ProductSearchParameters()
		{
			BrandIds = new List<int>();
			ColourIds = new List<int>();
			SizeIds = new List<int>();
		}

		public List<int> BrandIds { get; set; }
		public List<int> ColourIds { get; set; }
		public List<int> SizeIds { get; set; }
		public string SearchString { get; set; }
	}
}
