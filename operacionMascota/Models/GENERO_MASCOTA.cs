//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace operacionMascota.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class GENERO_MASCOTA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GENERO_MASCOTA()
        {
            this.MASCOTA_ABANDONADA = new HashSet<MASCOTA_ABANDONADA>();
            this.MASCOTA = new HashSet<MASCOTA>();
        }
    
        public long ID_GENERO { get; set; }
        public string GENERO { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MASCOTA_ABANDONADA> MASCOTA_ABANDONADA { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MASCOTA> MASCOTA { get; set; }
    }
}
