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
        public IEnumerable<SelectListItem> Sizes { get; set; }
    }
}