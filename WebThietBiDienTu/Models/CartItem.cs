using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebThietBiDienTu.Models
{
    public class CartItem
    {
        public int iMaSP { get; set; }
        public String iTenSP { get; set; }
        public double iGia { get; set; }
        public String iMoTa { get; set; }
        public String HinhAnh { get; set; }
        public int iSLTon { get; set; }
        public int iMaNCC { get; set; }
        public int iMaNhom { get; set; }
        public String iLoai { get; set; }
        public int iSL { get; set; }
        public double ThanhTien { get { return iSL * iGia; } }

        DataClasses1DataContext data = new DataClasses1DataContext();

        public CartItem(int msp)
        {
            SanPham sp = data.SanPhams.Single(n => n.MaSP == msp);
            if (sp != null)
            {
                iMaSP = msp;
                iTenSP = sp.TenSP;
                iGia = (double)sp.GiaBan;
                iMoTa = sp.MoTa;
                HinhAnh = sp.HinhAnh;
                iSLTon = (int)sp.SLTon;
                iMaNCC = (int)sp.MaNCC;
                iMaNhom = (int)sp.MaNhom;
                iLoai = sp.Loai;
                iSL = 1;
            }
        }
    }
}