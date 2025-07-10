using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace appscreeningproveedor.Server.Models
{
    public class Proveedor
    {
        [Key]
        [Column("id")]
        public int Id { get; set; }

        [Required, StringLength(255)]
        [Column("razon_social")]
        public string RazonSocial { get; set; } = "";

        [StringLength(255)]
        [Column("nombre_comercial")]
        public string? NombreComercial { get; set; }

        [Required, RegularExpression(@"^\d{11}$")]
        [Column("ruc")]
        public string RUC { get; set; } = "";

        [Phone]
        [Column("telefono")]
        public string? Telefono { get; set; }

        [EmailAddress]
        [Column("correo_electronico")]
        public string? CorreoElectronico { get; set; }

        [Url]
        [Column("sitio_web")]
        public string? SitioWeb { get; set; }

        [StringLength(500)]
        [Column("direccion")]
        public string? Direccion { get; set; }

        [StringLength(100)]
        [Column("pais")]
        public string? Pais { get; set; }

        [Column("facturacion_anual", TypeName = "decimal(18,2)")]
        public decimal? FacturacionAnual { get; set; }

        [Column("fecha_ultima_edicion")]
        public DateTime FechaUltimaEdicion { get; set; } = DateTime.UtcNow;
    }
}
