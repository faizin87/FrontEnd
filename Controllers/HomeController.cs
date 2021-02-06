using Freelancer.Helpers;
using Freelancer.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using static Freelancer.Models.MasterViewModel;

namespace Freelancer.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public async Task<IActionResult> Index()
        {
            IEnumerable<CurrencyViewModel> currencies = await MasterHelpers.GetCurrency();
            IEnumerable<DestinationViewModel> destinations = await MasterHelpers.GetDestination();
            IEnumerable<LanguangeViewModel> languanges = await MasterHelpers.GetLanguange();
            IEnumerable<MeasurementViewModel> measurements = await MasterHelpers.GetMeasurements();
            IEnumerable<PurchaseViewModel> purchases = await MasterHelpers.GetPurchaseOrders();
            NumberViewModel numbers = await MasterHelpers.GetNumber();
            ViewBag.number = numbers.Number;
            BillAddModel model = new BillAddModel()
            {
                Currencies = currencies,
                Destinations = destinations,
                Languanges = languanges,
                Measurements = measurements,
                Purchases = purchases,
                Number = numbers.Number,
            };
            return View(model);
        }

        [HttpPost]
        public async Task<string> Create(BillPostModel model, BillDetailPostModel billDetailPost)
        {
            await MasterHelpers.AddBill(model, billDetailPost);
            return model.Number + " successfully added";
        }


        public async Task<string> GetCurrency(string id)
        {
            string data = MasterHelpers.GetCurrency().GetAwaiter().GetResult().Where(s => s.CurrencyId.Equals(id))?.FirstOrDefault().Code;
            return data ;
        }

        public async Task<DestinationViewModel> GetDestination(string id)
        {
            DestinationViewModel data = MasterHelpers.GetDestination().GetAwaiter().GetResult().Where(s => s.DestinationId.Equals(id)).FirstOrDefault();
            return data;
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
