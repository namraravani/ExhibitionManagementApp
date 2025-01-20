using exhibition_management_backend.DTO;
using exhibition_management_backend.Repositories.Exhibition;

namespace exhibition_management_backend.Services.Exhibition
{
    public class ExhibitionService : IExhibitionService
    {
        private readonly IExhibitionRepository _repository;

        public ExhibitionService(IExhibitionRepository repository)
        {
            _repository = repository;
        }

        public IEnumerable<ExhibitionDTO> GetAllExhibitions()
        {
            return (IEnumerable<ExhibitionDTO>)_repository.GetAllExhibitions();
        }
    }
}
