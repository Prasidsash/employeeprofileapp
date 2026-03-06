FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY src/Employeeprofileapp/EmployeeProfileApp.csproj ./Employeeprofileapp/
RUN dotnet restore Employeeprofileapp/EmployeeProfileApp.csproj
COPY src/ ./
WORKDIR /src/Employeeprofileapp
RUN dotnet publish -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
ENV ASPNETCORE_URLS=http://+:8080
EXPOSE 8080
RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser
USER appuser
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "EmployeeProfileApp.dll"]