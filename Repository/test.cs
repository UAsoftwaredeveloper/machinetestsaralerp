using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class test
    {
        private testsaralerpEntities db = new testsaralerpEntities();
        public List<user> GetUsers()
        {
            var data = db.users.ToList();
            foreach (user item in data)
            {
                item.sales = db.sales.Where(x => x.userId == item.rowid).ToList();
            }
            return data;
        }
    }
}
