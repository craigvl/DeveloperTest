using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace DTO.Entities
{
	public class Customer
	{
        [Key]
		public int CustomerId { get; set; }
		public string CustomerName { get; set; }
		public int DiscountGroupId { get; set; }
        public DiscountGroup DiscountGroup { get; set; }
	}
}
