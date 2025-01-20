using exhibition_management_backend.DTO;
using exhibition_management_backend.Models;
using Microsoft.EntityFrameworkCore;

using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using exhibition_management_backend.DTO;
using Microsoft.Extensions.Configuration;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;
using Npgsql;
using Dapper;

namespace exhibition_management_backend.Repositories.Exhibition
{
    public class ExhibitionRepository : IExhibitionRepository
    {
        private readonly string _connectionString;

        private NpgsqlConnection connection;

        public ExhibitionRepository()
        {
            connection = new NpgsqlConnection(_connectionString);
            connection.Open();
        }

        public ExhibitionRepository(IConfiguration configuration)
        {
            // Fetch the connection string from appsettings.json
            _connectionString = configuration.GetConnectionString("DefaultConnection");
        }

        public async Task<IEnumerable<ExhibitionDTO>> GetAllExhibitions()
        {
            string commandText = "SELECT id,venuename,startdate,enddate,starttime,endtime,bannerimage FROM exhibition";
            var exhibitions =  await connection.QueryAsync<ExhibitionDTO>(commandText);

            return exhibitions;
        }
    }
}
