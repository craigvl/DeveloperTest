using DTO.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace DTO.Entities
{
	public class Product
	{
        [Key]
		public int ProductId { get; set; }
		public string ProductName { get; set; }
		public decimal CostPrice { get; set; }
		public decimal SellPrice { get; set; }
		public decimal? DiscountedSellPrice { get; set; }

        public int BrandId { get; set; }
        public int ColourId { get; set; }
        public int SizeId { get; set; }

        public virtual Brand Brand { get; set; }
        public virtual Colour Colour { get; set; }
        public virtual Size Size { get; set; }
	}
}
