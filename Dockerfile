#FROM microsoft/dotnet:latest
FROM microsoft/aspnetcore-build:2.0
ENV DOTNET_CLI_TELEMETRY_OPTOUT 1

WORKDIR /app

RUN useradd jenkins
USER jenkins

COPY . ./


EXPOSE 57777/tcp
#ENTRYPOINT ["dotnet", "run"]
