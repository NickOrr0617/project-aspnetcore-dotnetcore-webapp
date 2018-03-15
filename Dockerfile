#FROM microsoft/dotnet:latest
FROM microsoft/aspnetcore-build:2.0
COPY . /app
WORKDIR /app
EXPOSE 5000/tcp
RUN dotnet restore
USER root
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
#ENTRYPOINT ["dotnet", "run"]
