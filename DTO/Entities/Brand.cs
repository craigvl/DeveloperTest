using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace DTO.Entities
{
    public class Brand
    {
        [Key]
        [Column("BrandId")]
        public int BrandId { get; set; }
        public string BrandName { get; set; }
        public virtual ICollection<Product> Products { get; set; }
    }
}
