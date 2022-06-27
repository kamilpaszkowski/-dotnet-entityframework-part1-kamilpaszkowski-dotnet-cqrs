
using Euvic.Cqrs.Primitives;
using Euvic.StaffTraining.Domain;
using Euvic.StaffTraining.Identity.Abstractions;
using Euvic.StaffTraining.Infrastructure.EntityFramework;
using Contract = Euvic.StaffTraining.Contracts.Attendees.Commands.CreateAttendee;

namespace Euvic.StaffTraining.Features.Attendees.Commands.CreateAttendee
{
    internal class Handler : ICommandHandler<Contract.Command, long>
    {
        private readonly StaffTrainingContext _context;
        private readonly IIdentityProvider _identityProvider;

        public Handler(IIdentityProvider identityProvider, StaffTrainingContext context)
        {
            _identityProvider = identityProvider;
            _context = context;
        }

        public async Task<long> Handle(Contract.Command request, CancellationToken cancellationToken)
        {
            var attendee = new Attendee()
            {
                Firstname = request.Firstname,
                Lastname = request.Lastname,
                AllowedHours = 8
            };

            _context.Attendees.Add(attendee);

            attendee.UserProviderId = request.UserProviderId ?? await _identityProvider.CreateUserAsync(request.Email, request.Password);

            await _context.SaveChangesAsync();

            return attendee.Id;
        }
    }
}
