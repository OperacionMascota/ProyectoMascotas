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
    public class PERSONAController : Controller
    {
        private opemascotasEntities db = new opemascotasEntities();

        // GET: PERSONA
        public ActionResult Index()
        {
            var pERSONA = db.PERSONA.Include(p => p.TIPO_PERSONA).Include(p => p.REGISTRO_ADOPCION);
            return View(pERSONA.ToList());
        }

        // GET: PERSONA/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PERSONA pERSONA = db.PERSONA.Find(id);
            if (pERSONA == null)
            {
                return HttpNotFound();
            }
            return View(pERSONA);
        }

        // GET: PERSONA/Create
        public ActionResult Create()
        {
            ViewBag.ID_TPERSONA = new SelectList(db.TIPO_PERSONA, "ID_TPERSONA", "TIPO_PERSONA1");
            ViewBag.ID_PERSONA = new SelectList(db.REGISTRO_ADOPCION, "ID_REGISTRO", "ID_REGISTRO");
            return View();
        }

        // POST: PERSONA/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID_PERSONA,ID_TPERSONA,NOMBRE,AP_PATERNO,AP_MATERNO,TELEFONO,USUARIO,PASSWORD,USER_CREAR_P,PER_ELIMINAR,PER_ACTUALIZAR,FPER_CREAR,FPER_ELIMINAR,FPER_ACTUALIZAR")] PERSONA pERSONA)
        {
            if (ModelState.IsValid)
            {
                db.PERSONA.Add(pERSONA);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ID_TPERSONA = new SelectList(db.TIPO_PERSONA, "ID_TPERSONA", "TIPO_PERSONA1", pERSONA.ID_TPERSONA);
            ViewBag.ID_PERSONA = new SelectList(db.REGISTRO_ADOPCION, "ID_REGISTRO", "ID_REGISTRO", pERSONA.ID_PERSONA);
            return View(pERSONA);
        }

        // GET: PERSONA/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PERSONA pERSONA = db.PERSONA.Find(id);
            if (pERSONA == null)
            {
                return HttpNotFound();
            }
            ViewBag.ID_TPERSONA = new SelectList(db.TIPO_PERSONA, "ID_TPERSONA", "TIPO_PERSONA1", pERSONA.ID_TPERSONA);
            ViewBag.ID_PERSONA = new SelectList(db.REGISTRO_ADOPCION, "ID_REGISTRO", "ID_REGISTRO", pERSONA.ID_PERSONA);
            return View(pERSONA);
        }

        // POST: PERSONA/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID_PERSONA,ID_TPERSONA,NOMBRE,AP_PATERNO,AP_MATERNO,TELEFONO,USUARIO,PASSWORD,USER_CREAR_P,PER_ELIMINAR,PER_ACTUALIZAR,FPER_CREAR,FPER_ELIMINAR,FPER_ACTUALIZAR")] PERSONA pERSONA)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pERSONA).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ID_TPERSONA = new SelectList(db.TIPO_PERSONA, "ID_TPERSONA", "TIPO_PERSONA1", pERSONA.ID_TPERSONA);
            ViewBag.ID_PERSONA = new SelectList(db.REGISTRO_ADOPCION, "ID_REGISTRO", "ID_REGISTRO", pERSONA.ID_PERSONA);
            return View(pERSONA);
        }

        // GET: PERSONA/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PERSONA pERSONA = db.PERSONA.Find(id);
            if (pERSONA == null)
            {
                return HttpNotFound();
            }
            return View(pERSONA);
        }

        // POST: PERSONA/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            PERSONA pERSONA = db.PERSONA.Find(id);
            db.PERSONA.Remove(pERSONA);
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
