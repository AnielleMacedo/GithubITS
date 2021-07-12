using BikeStoresMVC.Models;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BikeStoresMVC.Controllers
{
    public class RoleController : Controller
    {
        ApplicationDbContext context;
        public RoleController()
        {
            context = new ApplicationDbContext();
        }
        // GET: Role
        public ActionResult Index()
        {
            var Roles = context.Roles.ToList();//crio uma lista de roles
            return View(Roles);
        }

       
        // GET: Role/Create
        public ActionResult Create()
        {
            var Role = new IdentityRole();//importa Microsoft.AspNet.Identity.EntityFramework;
            return View(Role);
        }

        // POST: Role/Create
        [HttpPost]
        public ActionResult Create(IdentityRole Role)
        {
            context.Roles.Add(Role);
            context.SaveChanges();//salvo a lista
            return RedirectToAction("Index");
        }

       
               
       
        
    }
}
