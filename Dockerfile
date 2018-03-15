#FROM microsoft/dotnet:latest
FROM microsoft/aspnetcore-build:2.0
ENV DOTNET_CLI_TELEMETRY_OPTOUT 1

WORKDIR /app

COPY . ./
RUN dotnet restore

WORKDIR /app/aspnet-core-dotnet-core
RUN dotnet build


EXPOSE 57777/tcp
ENTRYPOINT ["dotnet", "run"]
