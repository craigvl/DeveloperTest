using DTO.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DeveloperTestWebUI.Models;
using Logic;
using DTO;

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
                    }),
               Brands = processManager.GetBrands().Select(x => new SelectListItem
               {
                   Value = x.BrandId.ToString(),
                   Text = x.BrandName
               }),
               Colours = processManager.GetColours().Select(x => new SelectListItem
               {
                   Value = x.ColourId.ToString(),
                   Text = x.ColourName
               }),
               Products = processManager.GetProducts() 
            };
           
            return View(_ProductViewModel);
        }

        [HttpPost]
        public ActionResult Index(string searchString , int SizeID = -1, int BrandID = -1, int ColourID = -1)
        {
            
            ProductSearchParameters _Params = new ProductSearchParameters();

            if (SizeID != -1)
            {
                _Params.SizeIds.Add(SizeID);
            }

            if (BrandID != -1)
            {
                _Params.BrandIds.Add(BrandID);
            }

            if (ColourID != -1)
            {
                _Params.ColourIds.Add(ColourID);
            }

            if (searchString.Length > 0)
            {

                _Params.SearchString = searchString;

            }
 
            ProductSearchModel _ProductViewModel = new ProductSearchModel
            {
                Sizes = processManager.GetSizes().Select(x => new SelectListItem
                {
                    Value = x.SizeId.ToString(),
                    Text = x.SizeName
                }),
                Brands = processManager.GetBrands().Select(x => new SelectListItem
                {
                    Value = x.BrandId.ToString(),
                    Text = x.BrandName
                }),
                Colours = processManager.GetColours().Select(x => new SelectListItem
                {
                    Value = x.ColourId.ToString(),
                    Text = x.ColourName
                })
            };

            _ProductViewModel.Products = processManager.ProductSearch(_Params);

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