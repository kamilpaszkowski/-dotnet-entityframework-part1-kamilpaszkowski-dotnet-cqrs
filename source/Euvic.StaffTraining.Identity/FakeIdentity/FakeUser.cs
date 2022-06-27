using System.Security.Claims;
using System.Security.Principal;

namespace Euvic.StaffTraining.Identity.FakeIdentity
{
    public class FakePrincipal : IPrincipal
    {
        public const string AttendeeIdClaim = "AttendeeId";
        public const string LecturerIdClaim = "LecturerId";

        private ClaimsPrincipal _claimsPrincipal;

        public FakePrincipal()
        {
            var claims = new List<Claim>()
            {
                new Claim(ClaimTypes.Name, "Marcin Michalik"),
                new Claim(AttendeeIdClaim, "4"),
            };

            _claimsPrincipal = new ClaimsPrincipal(new ClaimsIdentity(claims, authenticationType: "bearer"));
        }

        public void ChangeIdentity(string fullName, string attendeeId, string lecturerId = null)
        {
            var claims = new List<Claim>()
            {
                new Claim(ClaimTypes.Name, fullName),
                new Claim(AttendeeIdClaim, attendeeId),
            };

            if (!string.IsNullOrWhiteSpace(lecturerId))
            {
                claims.Add(new Claim(LecturerIdClaim, lecturerId));
            }

            _claimsPrincipal = new ClaimsPrincipal(new ClaimsIdentity(claims, authenticationType: "bearer"));
        }

        public IIdentity Identity => _claimsPrincipal?.Identity;
        public bool IsInRole(string role) => false;
    }
}
