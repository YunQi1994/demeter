namespace demeter.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Crime_Stats
    {
        public int Id { get; set; }

        [Required]
        public string postcode { get; set; }

        [Required]
        public string offence_subgroup { get; set; }

        public int year_ending_december { get; set; }

        [Required]
        public string suburb { get; set; }

        [Required]
        public string offence_division { get; set; }

        [Required]
        public string offence_subdivision { get; set; }

        public int incidents_recorded { get; set; }

        public int? rate { get; set; }
    }
}
