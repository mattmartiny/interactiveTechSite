using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace InteractiveTechnologies.Models
{
    public class AspNetUserMap : EntityTypeConfiguration<AspNetUser>
    {
    
        public AspNetUserMap()
        {
            
            Property(c => c.Id).HasColumnName("Id");
            HasRequired(x => x.Id).WithMany().HasForeignKey(c => c.Id);

        }

    }


    public class AspNetRoleMap : EntityTypeConfiguration<AspNetRole>
    {

        public AspNetRoleMap()
        {
          
            Property(c => c.Id).HasColumnName("Id");
            HasRequired(x => x.Id).WithMany().HasForeignKey(c => c.Id);

        }

    }

}