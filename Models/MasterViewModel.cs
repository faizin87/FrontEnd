using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Freelancer.Models
{
    public class MasterViewModel
    {
        public class BillPostModel
        {
            public string BillId { get; set; }
            public string Number { get; set; }
            public string LanguangeId { get; set; }
            public string CurrencyId { get; set; }
            public string From { get; set; }
            public string DestinationId { get; set; }
            public string Date { get; set; }
            public string InvoiceDue { get; set; }
            public string PurchaseOrderId { get; set; }
            public string MeasurementId { get; set; }
            public string SubTotal { get; set; }
            public string Discount { get; set; }
            public string Total { get; set; }
            public string Status { get; set; }
            public string DiscountName { get; set; }
        }

        public class BillDetailPostModel
        {
            public string BillId { get; set; }
            public string Name { get; set; }
            public string Quantity { get; set; }
            public string Rate { get; set; }
            public string Amount { get; set; }
        }

        public class BillAddModel
        {
           public IEnumerable<CurrencyViewModel> Currencies{ get; set; }
           public IEnumerable<DestinationViewModel> Destinations{ get; set; }
           public IEnumerable<LanguangeViewModel> Languanges{ get; set; }
           public IEnumerable<MeasurementViewModel> Measurements{ get; set; }
           public IEnumerable<PurchaseViewModel> Purchases{ get; set; }
           public string Number { get; set; }
        }
        public class CurrencyViewModel
        {
            [JsonProperty("currencyId")]
            public string CurrencyId { get; set; }
            [JsonProperty("name")]
            public string Name { get; set; }
            [JsonProperty("code")]
            public string Code { get; set; }
        }

        public class DestinationViewModel
        {
            [JsonProperty("destinationId")]
            public string DestinationId { get; set; }
            [JsonProperty("name")]
            public string Name { get; set; }
            [JsonProperty("detail")]
            public string Detail { get; set; }
            [JsonProperty("logo")]
            public string Logo { get; set; }
        }

        public class LanguangeViewModel
        {
            [JsonProperty("languangeId")]
            public string LanguangeId { get; set; }
            [JsonProperty("name")]
            public string Name { get; set; }
        }

        public class MeasurementViewModel
        {
            [JsonProperty("measurementId")]
            public string MeasurementId { get; set; }
            [JsonProperty("name")]
            public string Name { get; set; }
        }

        public class PurchaseViewModel
        {
            [JsonProperty("purchaseOrderId")]
            public string PurchaseOrderId { get; set; }
            [JsonProperty("name")]
            public string Name { get; set; }
            [JsonProperty("code")]
            public string Code { get; set; }
        }

        public class NumberViewModel
        {
            [JsonProperty("number")]
            public string Number { get; set; }
        }

    }
}
