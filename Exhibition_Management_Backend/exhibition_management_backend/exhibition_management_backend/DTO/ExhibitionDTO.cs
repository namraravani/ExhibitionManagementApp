namespace exhibition_management_backend.DTO
{
    public class ExhibitionDTO
    {
        public int Id { get; set; }
        public string Venuename { get; set; } = null!;

        public DateOnly Startdate { get; set; }

        public DateOnly Enddate { get; set; }

        public TimeOnly Starttime { get; set; }

        public TimeOnly Endtime { get; set; }

        public string Bannerimage { get; set; } = null!;
    }
}
