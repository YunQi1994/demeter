namespace demeter.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Victoria_School
    {
        public int Id { get; set; }

        [Required]
        public string school_name { get; set; }

        [Required]
        public string school_type { get; set; }

        [Required]
        public string address_town { get; set; }

        [Required]
        public string education_sector { get; set; }

        [Required]
        public string address_line { get; set; }

        [Required]
        public string address_postcode { get; set; }

        [Required]
        public string full_phone_no { get; set; }

        public int iga_id { get; set; }

        [Required]
        public string iga_name { get; set; }

        public double x { get; set; }

        public double y { get; set; }
    }
}
