using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TesteProgramador.Controllers
{
    public class DepartamentosController : Controller
    {
        // GET: Rules
        public ActionResult Index()
        {
            return View();
        }

        // GET: Rules/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Rules/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Rules/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Rules/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Rules/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Rules/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Rules/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
