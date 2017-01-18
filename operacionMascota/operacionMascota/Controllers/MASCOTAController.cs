using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using operacionMascota.Models;

namespace operacionMascota.Controllers
{
    public class MASCOTAController : Controller
    {
        private opemascotasEntities db = new opemascotasEntities();

        // GET: MASCOTA
        public ActionResult Index()
        {
            var mASCOTA = db.MASCOTA.Include(m => m.ADOPTAR_MASCOTA).Include(m => m.COMUNAS).Include(m => m.GENERO_MASCOTA).Include(m => m.TIPO_MASCOTA).Include(m => m.REGISTRO_ADOPCION);
            return View(mASCOTA.ToList());
        }

        // GET: MASCOTA/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MASCOTA mASCOTA = db.MASCOTA.Find(id);
            if (mASCOTA == null)
            {
                return HttpNotFound();
            }
            return View(mASCOTA);
        }

        // GET: MASCOTA/Create
        public ActionResult Create()
        {
            ViewBag.ID_MASCOTA = new SelectList(db.ADOPTAR_MASCOTA, "ID_AD", "USER_CREAR_AD");
            ViewBag.ID_COMUNA = new SelectList(db.COMUNAS, "ID_COMUNA", "COMUNA");
            ViewBag.ID_GENERO = new SelectList(db.GENERO_MASCOTA, "ID_GENERO", "GENERO");
            ViewBag.ID_TIPOM = new SelectList(db.TIPO_MASCOTA, "ID_TIPOM", "TIPO_M");
            ViewBag.ID_MASCOTA = new SelectList(db.REGISTRO_ADOPCION, "ID_REGISTRO", "ID_REGISTRO");
            return View();
        }

        // POST: MASCOTA/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID_MASCOTA,ID_COMUNA,ID_TIPOM,ID_GENERO,NICK_MASCOTA,TAMANO,FOTO_M1,FOTO_M2,FOTO_M3,USER_CREAR_MASCOTA,USER_ELIMINAR_MASCOTA,USER_ACTUALIZAR_MASCOTA,USER_CREAR_FMASC,USER_ELIMINAR_FMASC,USER_ACTUALIZAR_FMASC")] MASCOTA mASCOTA)
        {
            if (ModelState.IsValid)
            {
                db.MASCOTA.Add(mASCOTA);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ID_MASCOTA = new SelectList(db.ADOPTAR_MASCOTA, "ID_AD", "USER_CREAR_AD", mASCOTA.ID_MASCOTA);
            ViewBag.ID_COMUNA = new SelectList(db.COMUNAS, "ID_COMUNA", "COMUNA", mASCOTA.ID_COMUNA);
            ViewBag.ID_GENERO = new SelectList(db.GENERO_MASCOTA, "ID_GENERO", "GENERO", mASCOTA.ID_GENERO);
            ViewBag.ID_TIPOM = new SelectList(db.TIPO_MASCOTA, "ID_TIPOM", "TIPO_M", mASCOTA.ID_TIPOM);
            ViewBag.ID_MASCOTA = new SelectList(db.REGISTRO_ADOPCION, "ID_REGISTRO", "ID_REGISTRO", mASCOTA.ID_MASCOTA);
            return View(mASCOTA);
        }

        // GET: MASCOTA/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MASCOTA mASCOTA = db.MASCOTA.Find(id);
            if (mASCOTA == null)
            {
                return HttpNotFound();
            }
            ViewBag.ID_MASCOTA = new SelectList(db.ADOPTAR_MASCOTA, "ID_AD", "USER_CREAR_AD", mASCOTA.ID_MASCOTA);
            ViewBag.ID_COMUNA = new SelectList(db.COMUNAS, "ID_COMUNA", "COMUNA", mASCOTA.ID_COMUNA);
            ViewBag.ID_GENERO = new SelectList(db.GENERO_MASCOTA, "ID_GENERO", "GENERO", mASCOTA.ID_GENERO);
            ViewBag.ID_TIPOM = new SelectList(db.TIPO_MASCOTA, "ID_TIPOM", "TIPO_M", mASCOTA.ID_TIPOM);
            ViewBag.ID_MASCOTA = new SelectList(db.REGISTRO_ADOPCION, "ID_REGISTRO", "ID_REGISTRO", mASCOTA.ID_MASCOTA);
            return View(mASCOTA);
        }

        // POST: MASCOTA/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID_MASCOTA,ID_COMUNA,ID_TIPOM,ID_GENERO,NICK_MASCOTA,TAMANO,FOTO_M1,FOTO_M2,FOTO_M3,USER_CREAR_MASCOTA,USER_ELIMINAR_MASCOTA,USER_ACTUALIZAR_MASCOTA,USER_CREAR_FMASC,USER_ELIMINAR_FMASC,USER_ACTUALIZAR_FMASC")] MASCOTA mASCOTA)
        {
            if (ModelState.IsValid)
            {
                db.Entry(mASCOTA).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ID_MASCOTA = new SelectList(db.ADOPTAR_MASCOTA, "ID_AD", "USER_CREAR_AD", mASCOTA.ID_MASCOTA);
            ViewBag.ID_COMUNA = new SelectList(db.COMUNAS, "ID_COMUNA", "COMUNA", mASCOTA.ID_COMUNA);
            ViewBag.ID_GENERO = new SelectList(db.GENERO_MASCOTA, "ID_GENERO", "GENERO", mASCOTA.ID_GENERO);
            ViewBag.ID_TIPOM = new SelectList(db.TIPO_MASCOTA, "ID_TIPOM", "TIPO_M", mASCOTA.ID_TIPOM);
            ViewBag.ID_MASCOTA = new SelectList(db.REGISTRO_ADOPCION, "ID_REGISTRO", "ID_REGISTRO", mASCOTA.ID_MASCOTA);
            return View(mASCOTA);
        }

        // GET: MASCOTA/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MASCOTA mASCOTA = db.MASCOTA.Find(id);
            if (mASCOTA == null)
            {
                return HttpNotFound();
            }
            return View(mASCOTA);
        }

        // POST: MASCOTA/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            MASCOTA mASCOTA = db.MASCOTA.Find(id);
            db.MASCOTA.Remove(mASCOTA);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
