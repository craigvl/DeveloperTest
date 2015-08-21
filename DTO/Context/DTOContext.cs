using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity;

namespace DTO.Context
{
    class DTOContext : DbContext
    {

        public DTOContext(): base("DTOContext")
        {
        }
        
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<DiscountGroup> DiscountGroup { get; set; }
    }
}
