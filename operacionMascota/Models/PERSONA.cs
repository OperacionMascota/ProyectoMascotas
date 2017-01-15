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
    
    public partial class PERSONA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PERSONA()
        {
            this.MASCOTA_ABANDONADA = new HashSet<MASCOTA_ABANDONADA>();
            this.REGISTRO_DONACION = new HashSet<REGISTRO_DONACION>();
            this.SEGUIMIENTO_ADOPCION = new HashSet<SEGUIMIENTO_ADOPCION>();
            this.SOLICITUD_DONACIONES = new HashSet<SOLICITUD_DONACIONES>();
            this.USUARIO_LISTA = new HashSet<USUARIO_LISTA>();
        }
    
        public long ID_PERSONA { get; set; }
        public Nullable<long> ID_TPERSONA { get; set; }
        public string NOMBRE { get; set; }
        public string AP_PATERNO { get; set; }
        public string AP_MATERNO { get; set; }
        public string TELEFONO { get; set; }
        public string USUARIO { get; set; }
        public string PASSWORD { get; set; }
        public string USER_CREAR_P { get; set; }
        public string PER_ELIMINAR { get; set; }
        public string PER_ACTUALIZAR { get; set; }
        public Nullable<System.DateTime> FPER_CREAR { get; set; }
        public Nullable<System.DateTime> FPER_ELIMINAR { get; set; }
        public Nullable<System.DateTime> FPER_ACTUALIZAR { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MASCOTA_ABANDONADA> MASCOTA_ABANDONADA { get; set; }
        public virtual TIPO_PERSONA TIPO_PERSONA { get; set; }
        public virtual REGISTRO_ADOPCION REGISTRO_ADOPCION { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<REGISTRO_DONACION> REGISTRO_DONACION { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SEGUIMIENTO_ADOPCION> SEGUIMIENTO_ADOPCION { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SOLICITUD_DONACIONES> SOLICITUD_DONACIONES { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<USUARIO_LISTA> USUARIO_LISTA { get; set; }
    }
}
