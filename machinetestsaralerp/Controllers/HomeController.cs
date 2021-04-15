using AutoMapper;
using machinetestsaralerp.Models;
using Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace machinetestsaralerp.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {

            List<Repository.user> Dto = new List<Repository.user>();
            Dto = new test().GetUsers();
            List<Models.user> users = (from item in Dto
                                       let sales = (item.sales.Select(sal => new Models.sale { DateOn = sal.DateOn, details = sal.details, name = sal.name, rowid = sal.rowid, userId = sal.userId, user = new Models.user { rowid = sal.user.rowid, name = sal.name } })).ToList()
                                       select new Models.user
                                       {
                                           name = item.name,
                                           rowid = item.rowid,
                                           sales = sales

                                       }).ToList();
            return View(users);

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