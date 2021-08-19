using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebThietBiDienTu.Models;

namespace WebThietBiDienTu.Controllers
{
    public class DatHangController : Controller
    {
        //
        // GET: /DatHang/

        DataClasses1DataContext data = new DataClasses1DataContext();

        public ActionResult ThemMatHang(int msp)
        {
            GioHang gio = (GioHang)Session["gh"];
            if (gio == null)
            {
                gio = new GioHang();
            }
            gio.them(msp);
            Session["gh"] = gio;
            return RedirectToAction("Index", "Home");
        }

        public ActionResult XemGioHang()
        {
            GioHang gh = (GioHang)Session["gh"];
            return View(gh);
        }

        [HttpGet]
        public ActionResult XacNhanDonHang()
        {
            //Kiểm tra khách hàng đăng nhập
            KhachHang khach = Session["kh"] as KhachHang;

            if (khach == null) //Khách hàng chưa đăng nhập
            {
                return RedirectToAction("DangNhap", "KhachHang");
            }

            //Khách hàng đăng nhập thành công
            ViewBag.k = khach;

            GioHang gio = Session["gh"] as GioHang;
            return View(gio);
        }

        [HttpPost]
        public ActionResult LuuDonHang(FormCollection c)
        {
            string ngaygiao = c["txtDate"];

            KhachHang khach = Session["kh"] as KhachHang;

            GioHang gio = Session["gh"] as GioHang;

            //Lưu 1 dòng tin vào bảng HoaDon (ngày hóa đơn, mã khách hàng, ngày giao)
            DonHang hd = new DonHang();
            hd.NgayDat = DateTime.Now;
            hd.MaKH = khach.MaKH;
            hd.NgayGiao = DateTime.Parse(ngaygiao);
            data.DonHangs.InsertOnSubmit(hd);
            data.SubmitChanges();

            //Lưu nhiều dòng tin vào bảng ChiTiet (mã hóa đơn, mã sản phẩm, số lượng)
            foreach (CartItem it in gio.dsSP)
            {
                ChiTietDonHang ct = new ChiTietDonHang();
                ct.MaDonHang = hd.MaDonHang;
                ct.MaSP = it.iMaSP;
                ct.SoLuong = it.iSL;

                data.ChiTietDonHangs.InsertOnSubmit(ct);
                data.SubmitChanges();
            }

            Session["gh"] = null;

            return View();
        }

        public ActionResult XoaGioHang()
        {
            Session["gh"] = null;
            return RedirectToAction("Index", "Home");
        }

    }
}