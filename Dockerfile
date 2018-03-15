FROM microsoft/dotnet:latest
COPY ./aspnet-core-dotnet-core /app
WORKDIR /app
EXPOSE 5000/tcp
#ENTRYPOINT ["dotnet", "run"]
