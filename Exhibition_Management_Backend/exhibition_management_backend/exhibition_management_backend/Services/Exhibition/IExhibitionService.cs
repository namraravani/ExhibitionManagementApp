using exhibition_management_backend.DTO;

namespace exhibition_management_backend.Services.Exhibition
{
    public interface IExhibitionService
    {
        IEnumerable<ExhibitionDTO> GetAllExhibitions();
    }
}
