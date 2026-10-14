var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello from .NET 9 Web App in GitLab CI/CD Pipeline!");

app.Run();
