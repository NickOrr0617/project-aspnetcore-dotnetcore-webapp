#FROM microsoft/dotnet:latest
FROM microsoft/aspnetcore-build:2.0

COPY . ./
RUN dotnet restore
WORKDIR /app


EXPOSE 5000/tcp
#ENTRYPOINT ["dotnet", "run"]
