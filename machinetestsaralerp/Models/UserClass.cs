using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace machinetestsaralerp.Models
{
    public partial class user
    {
        public user()
        {
            this.sales = new HashSet<sale>();
        }

        public long rowid { get; set; }
        public string name { get; set; }

        public virtual ICollection<sale> sales { get; set; }

    }
    public partial class sale
    {
        public long rowid { get; set; }
        public Nullable<long> userId { get; set; }
        public string name { get; set; }
        public string details { get; set; }
        public Nullable<System.DateTime> DateOn { get; set; }

        public virtual user user { get; set; }
    }
}