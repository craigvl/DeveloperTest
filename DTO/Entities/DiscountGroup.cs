using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace DTO.Entities
{
	public class DiscountGroup
	{
        [Key]
		public int DiscountGroupId { get; set; }
		public string DiscountGroupName { get; set; }
		public byte? DiscountPercentage { get; set; }
	}
}
