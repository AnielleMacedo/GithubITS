using GestioneBiblio2.Models;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GestioneBiblio2.Controllers
{
    [Authorize(Roles = "Administrator")] //Accessed by Admin /evita l'acesso tramite url
    public class RoleController : Controller
    {
        //cria objeto para o db com dbcontext
        ApplicationDbContext context;

        public RoleController()
        {
            context = new ApplicationDbContext();
        }
               
        //get all roles
        public ActionResult Index()
        {
            var Roles = context.Roles.ToList();
            return View(Roles);//lista dei ruoli
        }

        public ActionResult Create()
        {
            var Role = new IdentityRole();
            return View(Role);
        }

        [HttpPost]
        public ActionResult Create(IdentityRole Role)
        {

            //if (Role.Equals(' ')) pra resolver envio ao db de campo nulo basta usar try catch e fazer teornar a mesma view
            try
            {
                context.Roles.Add(Role);
                context.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }


        }

        //per cancellare ruolo
        public ActionResult Delete(string Role)
        {
            var thisRole = context.Roles.Where(x => x.Name.Equals(Role, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();
            context.Roles.Remove(thisRole);
            context.SaveChanges();//salva e torna alla pagina
            return RedirectToAction("Index");
        } //dont need view

        //per modificare ruolo GET
        public ActionResult Edit(string Role)
        {
            var thisRole = context.Roles.Where(x => x.Name.Equals(Role, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();
            return View(thisRole);
        }

        //modifica ruolo POST
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Microsoft.AspNet.Identity.EntityFramework.IdentityRole Role)//includere empty view
        {
            try
            {
                context.Entry(Role).State = System.Data.Entity.EntityState.Modified;
                context.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return RedirectToAction("Edit");//NAO FUNCIONA O EDIT
            }
        }
    }
}