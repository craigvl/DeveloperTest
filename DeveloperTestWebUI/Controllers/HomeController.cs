using DTO.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DeveloperTestWebUI.Models;
using Logic;

namespace DeveloperTestWebUI.Controllers
{
    public class HomeController : Controller
    {
        private DTOContext db = new DTOContext();
        public ProcessManager processManager;

        public HomeController()
        {
            processManager = new ProcessManager(db);
        }

        public ActionResult Index()
        {

            ProductSearchModel _ProductViewModel = new ProductSearchModel
            {
               Sizes = processManager.GetSizes().Select(x => new SelectListItem
                    {
                        Value = x.SizeId.ToString(),
                        Text = x.SizeName
                    })
            };
           
            return View(_ProductViewModel);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}