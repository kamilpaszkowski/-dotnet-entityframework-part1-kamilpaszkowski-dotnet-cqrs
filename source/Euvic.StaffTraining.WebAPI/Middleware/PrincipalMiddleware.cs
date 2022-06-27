using System.Security.Principal;
using System.Threading.Tasks;
using Euvic.StaffTraining.Identity.FakeIdentity;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;

namespace Euvic.StaffTraining.WebAPI.Middleware
{
    internal class FakePrincipalMiddleware
    {
        private readonly RequestDelegate _next;

        public FakePrincipalMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context, IPrincipal principal)
        {
            if (context.Request.Headers.ContainsKey("X-Attendee-Id"))
            {
                (principal as FakePrincipal).ChangeIdentity("Fake user", context.Request.Headers["X-Attendee-Id"]);
            }

            await _next(context).ConfigureAwait(false);
        }
    }

    public static class FakePrincipalMiddlewareMiddlewareExtensions
    {
        public static IApplicationBuilder UseFakePrincipalMiddleware(this IApplicationBuilder builder) =>
            builder.UseMiddleware<FakePrincipalMiddleware>();
    }
}
