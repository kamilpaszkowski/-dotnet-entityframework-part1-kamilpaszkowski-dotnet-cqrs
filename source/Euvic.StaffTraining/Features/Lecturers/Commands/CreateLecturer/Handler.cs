
using Euvic.Cqrs.Primitives;
using Euvic.StaffTraining.Domain;
using Euvic.StaffTraining.Identity.Abstractions;
using Euvic.StaffTraining.Infrastructure.EntityFramework;
using MediatR;
using Microsoft.Extensions.Logging;
using Contract = Euvic.StaffTraining.Contracts.Lecturers.Commands.CreateLecturer;

namespace Euvic.StaffTraining.Features.Attendees.Commands.CreateLecturer
{
    internal class Handler : ICommandHandler<Contract.Command, long>
    {
        private readonly StaffTrainingContext _context;
        private readonly IIdentityProvider _identityProvider;
        private readonly IMediator _mediator;
        private readonly ILogger<Handler> _logger;

        public Handler(IIdentityProvider identityProvider, StaffTrainingContext context, IMediator mediator, ILogger<Handler> logger)
        {
            _identityProvider = identityProvider;
            _context = context;
            _mediator = mediator;
            _logger = logger;
        }

        public async Task<long> Handle(Contract.Command request, CancellationToken cancellationToken)
        {
            using var transaction = _context.Database.BeginTransaction();

            var lecturer = new Lecturer()
            {
                Firstname = request.Firstname,
                Lastname = request.Lastname
            };

            try
            {
                _context.Lecturers.Add(lecturer);
                await _context.SaveChangesAsync();

                var userProviderId = await _identityProvider.CreateUserAsync(request.Email, request.Password);

                await CreateAttendeeAsync(request.Firstname, request.Lastname, userProviderId);

                lecturer.UserProviderId = userProviderId;

                await _context.SaveChangesAsync();
                await transaction.CommitAsync();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "It was an exception during creating attendee");
                await transaction.RollbackAsync();
            }

            return lecturer.Id;
        }

        private async Task CreateAttendeeAsync(string firstname, string lastname, long userProviderId)
        {
            await _mediator.Send(new Contracts.Attendees.Commands.CreateAttendee.Command()
            {
                Firstname = firstname,
                Lastname = lastname,
                UserProviderId = userProviderId
            });
        }
    }
}
