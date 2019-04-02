namespace demeter.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Female_Operator_Income
    {
        public int Id { get; set; }

        public int year { get; set; }

        [Required]
        public string age { get; set; }

        public int count { get; set; }

        public double income { get; set; }
    }
}
