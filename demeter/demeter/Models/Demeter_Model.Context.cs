﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace demeter.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Demeter_ModelContainer : DbContext
    {
        public Demeter_ModelContainer()
            : base("name=Demeter_ModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Childcare> Childcares { get; set; }
        public virtual DbSet<School> Schools { get; set; }
        public virtual DbSet<LegalServices> LegalServices { get; set; }
        public virtual DbSet<RankingHair> RankingHairs { get; set; }
        public virtual DbSet<RankingLB> RankingLBs { get; set; }
        public virtual DbSet<RankingME> RankingMEs { get; set; }
        public virtual DbSet<RankingTK> RankingTKs { get; set; }
        public virtual DbSet<Transport> Transports { get; set; }
    }
}
