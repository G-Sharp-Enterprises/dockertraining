FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["DockerCourseFrontend/DockerCourseFrontend.csproj", "DockerCourseFrontend/"]
RUN dotnet restore "DockerCourseFrontend/DockerCourseFrontend.csproj"
COPY . .
RUN dotnet publish "DockerCourseFrontend/DockerCourseFrontend.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM nginx:alpine
COPY --from=build /app/publish/wwwroot /usr/share/nginx/html
