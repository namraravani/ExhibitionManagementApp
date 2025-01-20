using exhibition_management_backend.DTO;

namespace exhibition_management_backend.Repositories.Exhibition
{
    public interface IExhibitionRepository
    {
        Task<IEnumerable<ExhibitionDTO>> GetAllExhibitions();
    }
}
