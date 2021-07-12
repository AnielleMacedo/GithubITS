using Esercitazione_GestionePrestitiBiblioteca.Models;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Esercitazione_GestionePrestitiBiblioteca.Controllers
{
    public class RoleController : Controller
    {
        //Classe que configura permissao pra cada tipo de usuario
    
        
            ApplicationDbContext context;

            //construtor inicializando db
            public RoleController()
            {
                context = new ApplicationDbContext();//instancio appdbcontext q existe ja de efault
            }


            //get all roles
     
            public ActionResult Index()//crio view do tipo list
            {
                var Roles = context.Roles.ToList();//crio uma lista de roles
                return View(Roles);
            }

            //Essas 2 views apenas criam ruolo com get e post e no registrtRole em accountController crio view q assegna ruolo
            // GET:Create a New Role
            public ActionResult Create()
            {
                var Role = new IdentityRole();//importa Microsoft.AspNet.Identity.EntityFramework;
                return View(Role);
            }

            // POST: Role/Create new role
            [HttpPost]
            public ActionResult Create(IdentityRole Role)
            {
                context.Roles.Add(Role);
                context.SaveChanges();//salvo a lista
                return RedirectToAction("Index");
            }



    }
}
