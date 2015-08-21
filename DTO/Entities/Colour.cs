using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace DTO.Entities
{
    public class Colour
    {
        [Key]
        public int ColourId { get; set; }
        public string ColourName { get; set; }
        public virtual ICollection<Product> Products { get; set; }
    }
}
