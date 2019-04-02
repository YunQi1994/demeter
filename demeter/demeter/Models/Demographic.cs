namespace demeter.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Demographic
    {
        public int Id { get; set; }

        [Required]
        public string postcode { get; set; }

        public int Tot_P_M { get; set; }

        public int Tot_P_F { get; set; }

        public int Tot_P_P { get; set; }

        public int Age_0_14_P { get; set; }

        public int Age_15_19_P { get; set; }

        public int Age_20_24_P { get; set; }

        public int Age_25_34_P { get; set; }

        public int Age_35_44_P { get; set; }

        public int Age_45_54_P { get; set; }

        public int Age_55_64_P { get; set; }

        public int Age_65_74_P { get; set; }

        public int Age_75over_P { get; set; }

        public int PIncome_BelowAvg { get; set; }

        public int PIncome_1_649 { get; set; }

        public int PIncome_650_1249 { get; set; }

        public int PIncome_1250_1999 { get; set; }

        public int PIncome_2000over { get; set; }

        [Required]
        public string COB_top1 { get; set; }

        [Required]
        public string COB_top2 { get; set; }

        [Required]
        public string COB_top3 { get; set; }

        [Required]
        public string COBtop4 { get; set; }

        public int Family_with_Children_Under15 { get; set; }

        public int Family_Total { get; set; }
    }
}
