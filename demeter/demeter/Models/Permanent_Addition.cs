namespace demeter.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Permanent_Addition
    {
        public int Id { get; set; }

        public int financial_year { get; set; }

        [Required]
        public string country_citizenship { get; set; }

        [Required]
        public string sex { get; set; }

        [Required]
        public string age_group { get; set; }

        [Required]
        public string intended_residence_state { get; set; }

        [Required]
        public string country_birth { get; set; }
    }
}
