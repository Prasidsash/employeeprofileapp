FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app

ENV ASPNETCORE_URLS=http://+:8080

EXPOSE 8080

USER root

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

RUN addgroup --system appgroup && \
    adduser --system --ingroup appgroup appuser

USER appuser

COPY --from=build /app/publish .

ENTRYPOINT ["dotnet", "EmployeeProfileApp.dll"]