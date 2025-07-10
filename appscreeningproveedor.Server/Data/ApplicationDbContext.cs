using appscreeningproveedor.Server.Models;
using Microsoft.EntityFrameworkCore;

namespace appscreeningproveedor.Server.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options) { }

        public DbSet<Proveedor> Proveedores { get; set; }
    }
}
