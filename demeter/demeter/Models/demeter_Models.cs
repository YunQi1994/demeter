namespace demeter.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class demeter_Models : DbContext
    {
        public demeter_Models()
            : base("name=demeter_Models1")
        {
        }

        public virtual DbSet<Crime_Stats> Crime_Stats { get; set; }
        public virtual DbSet<Demographic> Demographics { get; set; }
        public virtual DbSet<Female_Operator_Income> Female_Operator_Income { get; set; }
        public virtual DbSet<Permanent_Addition> Permanent_Addition { get; set; }
        public virtual DbSet<Victoria_School> Victoria_School { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
