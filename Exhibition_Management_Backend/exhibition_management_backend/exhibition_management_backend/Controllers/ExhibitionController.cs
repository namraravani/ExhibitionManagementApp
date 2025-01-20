using exhibition_management_backend.DTO;
using exhibition_management_backend.Services.Exhibition;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace exhibition_management_backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ExhibitionController : ControllerBase
    {
        private readonly IExhibitionService _service;

        public ExhibitionController(IExhibitionService service)
        {
            _service = service;
        }

        [HttpGet]
        public ActionResult<IEnumerable<ExhibitionDTO>> Get()
        {
            var exhibitions = _service.GetAllExhibitions();
            return Ok(exhibitions);
        }
    }
}
