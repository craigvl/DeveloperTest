using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity;
using DTO.Entities;

namespace DTO.Context
{
    public class DTOContext : DbContext
    {

        public DTOContext(): base("DTOContext")
        {
        }
        
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<DiscountGroup> DiscountGroup { get; set; }
        public DbSet<Size> Sizes { get; set; }
        public DbSet<Brand> Brands { get; set; }
        public DbSet<Colour> Colours { get; set; }
    }
}
