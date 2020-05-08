using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Unit16Work.Models;
using Newtonsoft.Json;

namespace Unit16Work.Controllers
{
    public class WorkController : Controller
    {
        // GET: Work
        public ActionResult Add()
        {
            GetWorkType();
            GetOne();
            GetTwo();
            GetThree();
            return View();
        }
        [HttpPost]
        public ActionResult Add(WorkReader work)
        {
            return View();
        }
        /// <summary>
        /// 绑定工作类型下拉框
        /// </summary>
        public void GetWorkType()
        {
            string str = "select * from WorkType";
            List<WorkType> types = DBHelper.GetToList<WorkType>(str);
            ViewBag.types = new SelectList(types,"Id","Name");
        }
        [HttpGet]
        /// <summary>
        /// 一级审核下拉框
        /// </summary>
        public string GetOne()
        {
            string str = "select * from OneRoles";
            List<OneRoles> ones = DBHelper.GetToList<OneRoles>(str);
            string json = JsonConvert.SerializeObject(ones);
            return json;
        }
        /// <summary>
        /// 一级审核下拉框
        /// </summary>
        public string GetTwo()
        {
            string str = "select * from TwoRoles";
            List<TwoRoles> twos = DBHelper.GetToList<TwoRoles>(str);
            string json = JsonConvert.SerializeObject(twos);
            return json;
        }
        /// <summary>
        /// 一级审核下拉框
        /// </summary>
        public string GetThree()
        {
            string str = "select * from ThreeRoles";
            List<ThreeRoles> threes = DBHelper.GetToList<ThreeRoles>(str);
            string json = JsonConvert.SerializeObject(threes);
            return json;
        }
    }
}