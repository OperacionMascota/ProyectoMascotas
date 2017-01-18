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
    
    public partial class MASCOTA_ABANDONADA
    {
        public long ID_ABANDONADO { get; set; }
        public Nullable<long> ID_UBICACION { get; set; }
        public long ID_PERSONA { get; set; }
        public Nullable<long> ID_TIPOM { get; set; }
        public Nullable<long> ID_GENERO { get; set; }
        public string DESCRIPCION { get; set; }
        public byte[] FOTO_MA1 { get; set; }
        public byte[] FOTO_MA2 { get; set; }
        public byte[] FOTO_MA3 { get; set; }
        public string USER_CREAR_AB { get; set; }
        public string USER_ELIMINAR_AB { get; set; }
        public string USER_ACTUALIZAR_AB { get; set; }
        public Nullable<System.DateTime> USER_CREAR_FAB { get; set; }
        public Nullable<System.DateTime> USER_ELIMINAR_FAB { get; set; }
        public Nullable<System.DateTime> USER_ACTUALIZAR_FAB { get; set; }
    
        public virtual GENERO_MASCOTA GENERO_MASCOTA { get; set; }
        public virtual PERSONA PERSONA { get; set; }
        public virtual TIPO_MASCOTA TIPO_MASCOTA { get; set; }
        public virtual UBICACION_MASCOTA UBICACION_MASCOTA { get; set; }
    }
}