using System.Data.SqlClient;
using Dapper;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddCors();

var app = builder.Build();

app.UseCors(x => x.AllowAnyOrigin());

app.MapGet("/albums", async () =>
{
    var db = new SqlConnection("Server=tcp:database;Initial Catalog=albums;Persist Security Info=False;User ID=sa;Password=CGIcgi123!@#;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;");

    return (await db.QueryAsync<Album>("SELECT * FROM Albums")).Select(x => x.Title);
});

app.Run();

record Album(Guid Id, string Title);
