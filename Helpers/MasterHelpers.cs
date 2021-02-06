using Freelancer.Libraries;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using static Freelancer.Models.MasterViewModel;

namespace Freelancer.Helpers
{
    public static class MasterHelpers
    {
        public static async Task<bool> AddBill(BillPostModel model, BillDetailPostModel billDetailPostModel)
        {
            string url = Startup.RestUrl + "/Bills/InsertBills";
            string url2 = Startup.RestUrl + "/Bills/InsertBillDetail";
            if (string.IsNullOrEmpty(model.From))
            {
                model.From = "-";
            }
            if (string.IsNullOrEmpty(model.Date))
            {
                model.Date = DateTime.Now.ToString("MM/dd/yyyy");
            }
            if (string.IsNullOrEmpty(model.InvoiceDue))
            {
                model.InvoiceDue = "-";
            }
            if (string.IsNullOrEmpty(model.Status))
            {
                model.Status = "-";
            }
            if (string.IsNullOrEmpty(model.DiscountName))
            {
                model.DiscountName = "-";
            }
            if (string.IsNullOrEmpty(model.Discount))
            {
                model.Discount = "0.0";
            }
            if (string.IsNullOrEmpty(model.SubTotal))
            {
                model.SubTotal = "0.0";
            }
            if (string.IsNullOrEmpty(model.Total))
            {
                model.Total = "0.0";
            }
            string billId = Guid.NewGuid().ToString();
            model.BillId = billId;
            var client = new HttpClient();
            string jsonText = JsonConvert.SerializeObject(model);
            var content = new StringContent(jsonText, System.Text.Encoding.UTF8, "application/json");
            HttpResponseMessage response = await client.PostAsync(url, content);
            if (response.IsSuccessStatusCode)
            {
                if (string.IsNullOrEmpty(billDetailPostModel.Quantity))
                {
                    billDetailPostModel.Quantity = "0.0";
                }
                if (string.IsNullOrEmpty(billDetailPostModel.Rate))
                {
                    billDetailPostModel.Rate = "0.0";
                }
                if (string.IsNullOrEmpty(billDetailPostModel.Amount))
                {
                    billDetailPostModel.Amount = "0.0";
                }
                if (string.IsNullOrEmpty(billDetailPostModel.Name))
                {
                    billDetailPostModel.Name = "-";
                }

                billDetailPostModel.BillId = billId;
                string jsonText2 = JsonConvert.SerializeObject(billDetailPostModel);
                var content2 = new StringContent(jsonText2, System.Text.Encoding.UTF8, "application/json");
                HttpResponseMessage response2 = await client.PostAsync(url2, content2);
                if (response2.IsSuccessStatusCode)
                {
                    return true;
                }
            }
            client.Dispose();
            return false;
        }

        //public static async Task<bool> AddBill(BillPostModel model)
        //{
        //    string url = Startup.RestUrl + "/Bills/InsertBills";
        //    HttpClient client = new HttpClient();
        //    Dictionary<string, string> parameters = new Dictionary<string, string> {
        //                            { "Number", model.Number },
        //                            { "LanguangeId", model.LanguangeId },
        //                            { "CurrencyId", model.CurrencyId },
        //                            { "From", model.From },
        //                            { "DestinationId", model.DestinationId },
        //                            { "Date", model.Date },
        //                            { "InvoiceDue", model.InvoiceDue },
        //                            { "PurchaseOrderId", model.PurchaseOrderId },
        //                            { "MeasurementId", model.MeasurementId },
        //                            { "SubTotal", model.SubTotal.ToString() },
        //                            { "Discount", model.Discount.ToString() },
        //                            { "Total", model.Total.ToString() },
        //                            { "Status", model.Status },
        //                            { "DiscountName", model.DiscountName }
        //                       };
        //    FormUrlEncodedContent encodedContent = new FormUrlEncodedContent(parameters);
        //    var content = new StringContent(JsonConvert.SerializeObject(model), Encoding.UTF8, "application/json");
        //    HttpResponseMessage response = await client.PostAsync(url, content);
        //    if (response.IsSuccessStatusCode)
        //    {
        //        return true;
        //    }
        //    client.Dispose();
        //    return false;
        //}

        public static async Task<IEnumerable<CurrencyViewModel>> GetCurrency()
        {
            string url = Startup.RestUrl + "/Currencies/GetData";
            HttpClient client = new HttpClient();
            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
            HttpResponseMessage response = await client.GetAsync(url);
            if (response.IsSuccessStatusCode)
            {
                client.Dispose();
                return await response.Content.ReadAsJsonAsync<IEnumerable<CurrencyViewModel>>();
            }
            client.Dispose();
            return null;
        }
        public static async Task<IEnumerable<DestinationViewModel>> GetDestination()
        {
            string url = Startup.RestUrl + "/Destinations/GetData";
            HttpClient client = new HttpClient();
            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
            HttpResponseMessage response = await client.GetAsync(url);
            if (response.IsSuccessStatusCode)
            {
                client.Dispose();
                return await response.Content.ReadAsJsonAsync<IEnumerable<DestinationViewModel>>();
            }
            client.Dispose();
            return null;
        }

        public static async Task<IEnumerable<LanguangeViewModel>> GetLanguange()
        {
            string url = Startup.RestUrl + "/Languanges/GetData";
            HttpClient client = new HttpClient();
            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
            HttpResponseMessage response = await client.GetAsync(url);
            if (response.IsSuccessStatusCode)
            {
                client.Dispose();
                return await response.Content.ReadAsJsonAsync<IEnumerable<LanguangeViewModel>>();
            }
            client.Dispose();
            return null;
        }

        public static async Task<IEnumerable<MeasurementViewModel>> GetMeasurements()
        {
            string url = Startup.RestUrl + "/Measurements/GetData";
            HttpClient client = new HttpClient();
            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
            HttpResponseMessage response = await client.GetAsync(url);
            if (response.IsSuccessStatusCode)
            {
                client.Dispose();
                return await response.Content.ReadAsJsonAsync<IEnumerable<MeasurementViewModel>>();
            }
            client.Dispose();
            return null;
        }

        public static async Task<IEnumerable<PurchaseViewModel>> GetPurchaseOrders()
        {
            string url = Startup.RestUrl + "/PurchaseOrders/GetData";
            HttpClient client = new HttpClient();
            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
            HttpResponseMessage response = await client.GetAsync(url);
            if (response.IsSuccessStatusCode)
            {
                client.Dispose();
                return await response.Content.ReadAsJsonAsync<IEnumerable<PurchaseViewModel>>();
            }
            client.Dispose();
            return null;
        }

        public static async Task<NumberViewModel> GetNumber()
        {
            string url = Startup.RestUrl + "/Bills/GetNumber";
            HttpClient client = new HttpClient();
            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
            HttpResponseMessage response = await client.GetAsync(url);
            if (response.IsSuccessStatusCode)
            {
                client.Dispose();
                return await response.Content.ReadAsJsonAsync<NumberViewModel>();
            }
            client.Dispose();
            return null;
        }

    }
}
