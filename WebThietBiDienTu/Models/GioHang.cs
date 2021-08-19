using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebThietBiDienTu.Models
{
    public class GioHang
    {
        public List<CartItem> dsSP;
        public GioHang()
        {
            dsSP = new List<CartItem>();
        }

        public GioHang(List<CartItem> lst)
        {
            dsSP = lst;
        }

        public int somathang()
        {
            if (dsSP == null)
            {
                return 0;
            }
            return dsSP.Count();
        }

        public int TongSL()
        {
            if (dsSP == null)
            {
                return 0;
            }
            return dsSP.Sum(t => t.iSL);
        }

        public double TongThanhTien()
        {
            if (dsSP == null)
            {
                return 0;
            }
            return dsSP.Sum(t => t.ThanhTien);
        }

        public int them(int msp)
        {
            CartItem sp = dsSP.SingleOrDefault(t => t.iMaSP == msp);
            if (sp == null)
            {
                CartItem a = new CartItem(msp);
                if (a == null)
                    return 0;
                dsSP.Add(a);
            }
            else
            {
                sp.iSL++;
            }
            return 1;
        }
    }
}