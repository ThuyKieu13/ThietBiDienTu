using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebThietBiDienTu.Models;
using System.IO;

namespace WebThietBiDienTu.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        DataClasses1DataContext data = new DataClasses1DataContext();

        public ActionResult Index()
        {
            List<SanPham> ds = data.SanPhams.OrderByDescending(sp => sp.GiaBan).ToList();
            return View(ds);
        }

        public ActionResult LienHe()
        {
            return View();
        }

        //Menu lọc sản phẩm theo nhóm hàng
        public ActionResult MENU()
        {
            List<NhomHang> ds = data.NhomHangs.ToList();
            return PartialView(ds);
        }
        
        public ActionResult HTSpTheoNhom(int id)
        {
            List<SanPham> ds = data.SanPhams.Where(sp => sp.MaNhom == id).ToList();
            return View("Index",ds);
        }

        [HttpGet]
        public ActionResult Sua(int id)
        {
            ViewBag.ncc = new SelectList(data.NhaCungCaps.ToList().OrderBy(n => n.TenNCC), "MaNCC", "TenNCC");
            ViewBag.nh = new SelectList(data.NhomHangs.ToList().OrderBy(n => n.TenNhomHang), "MaNhom", "TenNhomHang");
            SanPham sp = data.SanPhams.SingleOrDefault(n => n.MaSP == id);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sp);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Sua(SanPham sp, HttpPostedFileBase uploadhinh)
        {
            if (uploadhinh == null)
            {
                ViewBag.a = "Vui lòng chọn hình";
                return View();
            }
            else
            {
                if (ModelState.IsValid)
                {
                    var filename = Path.GetFileName(uploadhinh.FileName);
                    var path = Path.Combine(Server.MapPath("~/image"), filename);
                    if (System.IO.File.Exists(path))
                    {
                        ViewBag.a = "Hinh nay da ton tai";
                    }
                    else
                    {
                        uploadhinh.SaveAs(path);
                    }
                    sp.HinhAnh = filename;
                    UpdateModel(sp);
                    data.SubmitChanges();
                }
                return RedirectToAction("Admin");
            }
        }

        [HttpGet]
        public ActionResult Xoa(int id)
        {
            SanPham sp = data.SanPhams.SingleOrDefault(n => n.MaSP == id);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sp);
        }

        [HttpPost, ActionName("Xoa")]
        public ActionResult XacNhanXoa(int id)
        {
            SanPham sp = data.SanPhams.SingleOrDefault(n => n.MaSP == id);
            ViewBag.MaSP = sp.MaSP;
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            data.SanPhams.DeleteOnSubmit(sp);
            data.SubmitChanges();
            return RedirectToAction("Admin");
        }

        //[HttpGet]
        public ActionResult Search()
        {
            return View();
        }

        //[HttpPost]
        //public ActionResult Search(FormCollection col)
        //{
        //    string key = col["txtSearch"].ToString();
        //    return View();
        //}


        public ActionResult Detail(int id)
        {
            SanPham a = data.SanPhams.SingleOrDefault(sp => sp.MaSP == id);
            List<SanPham> dsSP_nhom = data.SanPhams.Where(sp => sp.MaNhom == a.MaNhom).ToList();
            ViewBag.nhom = dsSP_nhom;
            List<SanPham> dsSP_nsx = data.SanPhams.Where(sp => sp.MaNCC == a.MaNhom).ToList();
            ViewBag.nsx = dsSP_nsx;
            return View(a);
        }

        public ActionResult KhoiTaoLayout()
        {
            GioHang gio = Session["gh"] as GioHang;
            KhachHang k = Session["kh"] as KhachHang;
            ViewBag.khach = k;
            return PartialView(gio);
        }

        public ActionResult KH()
        {
            GioHang gio = Session["gh"] as GioHang;
            KhachHang k = Session["kh"] as KhachHang;
            ViewBag.khach = k;
            return PartialView(gio);
        }

        public ActionResult Admin()
        {
            List<SanPham> ds = data.SanPhams.ToList();
            return View(ds);
        }

        [HttpGet]
        public ActionResult Create()
        {
            ViewBag.ncc = new SelectList(data.NhaCungCaps.ToList(), "MaNCC", "TenNCC");
            ViewBag.nh = new SelectList(data.NhomHangs.ToList(), "MaNhom", "TenNhomHang");
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(SanPham s, HttpPostedFileBase uploadhinh)
        {
            if (uploadhinh == null)
            {
                ViewBag.a = "Vui lòng chọn hình";
                return View();
            }
            else
            {
                if (ModelState.IsValid)
                {
                    var filename = Path.GetFileName(uploadhinh.FileName);
                    var path = Path.Combine(Server.MapPath("~/image"), filename);
                    if (System.IO.File.Exists(path))
                    {
                        ViewBag.a = "Hình đã tồn tại";
                    }
                    else
                    {
                        uploadhinh.SaveAs(path);
                    }
                    s.HinhAnh = filename;
                    data.SanPhams.InsertOnSubmit(s);
                    data.SubmitChanges();
                }
                return RedirectToAction("Index");
            }
        }
    }
}
