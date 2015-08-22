using DTO.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DeveloperTestWebUI.Models
{
    public class ProductViewModels
    {
    }

    public class ProductSearchModel
    {
        public List<Product> Products { get; set; }
        public IEnumerable<SelectListItem> Sizes { get; set; }
        public IEnumerable<SelectListItem> Colours { get; set; }
        public IEnumerable<SelectListItem> Brands { get; set; }
        public IEnumerable<SelectListItem> Customers { get; set; }
    }
}