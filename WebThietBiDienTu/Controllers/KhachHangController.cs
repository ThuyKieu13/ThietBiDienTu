using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebThietBiDienTu.Models;

namespace WebThietBiDienTu.Controllers
{
    public class KhachHangController : Controller
    {
        //
        // GET: /KhachHang/

        DataClasses1DataContext data = new DataClasses1DataContext();

        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap(FormCollection c)
        {
            string ten = c["txtName"];
            string mk = c["txtPass"];
            KhachHang khach = data.KhachHangs.SingleOrDefault(t => t.TaiKhoan == ten && t.MatKhau == mk);
            if (khach == null)
                return View();
            Session["kh"] = khach;
            return RedirectToAction("Index", "Home");
        }

        [HttpGet]
        public ActionResult CreateAccount()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddAccount(FormCollection col)
        {
            string tenkh = col["txtHoTen"];
            string ngaysinh = col["dtpNgaySinh"];
            string gt = col["GioiTinh"];
            string sdt = col["txtSDT"];
            string dc = col["txtDC"];
            string tk = col["txtTaikhoan"];
            string ps = col["txtPass"];
            string email = col["txtEmail"];
            KhachHang kh = new KhachHang();
            kh.HoTen = tenkh;
            kh.GioiTinh = gt;
            kh.DienThoai = sdt;
            kh.DiaChi = dc;
            kh.TaiKhoan = tk;
            kh.MatKhau = ps;
            kh.Email = email;
            kh.NgaySinh = DateTime.Parse(ngaysinh);
            data.KhachHangs.InsertOnSubmit(kh);
            data.SubmitChanges();
            Session["KH"] = kh;
            KhachHang k = (KhachHang)Session["KH"];
            return RedirectToAction("Index", "Home");
        }
    }
}
