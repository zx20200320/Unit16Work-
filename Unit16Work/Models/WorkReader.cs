using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Unit16Work.Models
{
    /// <summary>
    /// 工作流
    /// </summary>
    public class WorkReader
    {
        public int Id		 { get; set; }
        public string WorkType { get; set; }
        public string WorkDay	 { get; set; }
        public string OneRoles { get; set; }
        public string TwoRoles { get; set; }
        public string ThreeRoles { get; set; }
    }
}