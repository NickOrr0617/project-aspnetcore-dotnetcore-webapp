#FROM microsoft/dotnet:latest
FROM microsoft/aspnetcore-build:2.0

COPY . ./
RUN dotnet restore
WORKDIR /app/aspnet-core-dotnet-core


EXPOSE 5000/tcp
#ENTRYPOINT ["dotnet", "run"]
