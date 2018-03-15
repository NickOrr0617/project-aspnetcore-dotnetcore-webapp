#FROM microsoft/dotnet:latest
FROM microsoft/aspnetcore-build:2.0
WORKDIR /app

COPY aspnet-core-dotnet-core/*.csproj ./
RUN dotnet restore


COPY aspnet-core-dotnet-core/ ./
EXPOSE 5000/tcp
#ENTRYPOINT ["dotnet", "run"]
