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
    
    public partial class USUARIO_LISTA
    {
        public long ID_USUARIOS_LISTA { get; set; }
        public Nullable<long> ID_LISTA { get; set; }
        public Nullable<long> ID_PERSONA { get; set; }
    
        public virtual LISTA_NEGRA LISTA_NEGRA { get; set; }
        public virtual PERSONA PERSONA { get; set; }
    }
}
