#build
FROM mcr.microsoft.com/dotnet/core/sdk:2.2-stretch AS build-env
WORKDIR /app


#restore
COPY Docker/Docker.csproj ./Docker/
RUN dotnet restore Docker/Docker.csproj
COPY Docker.Test/Docker.Test.csproj ./Docker.Test/
RUN dotnet restore Docker.Test/Docker.Test.csproj

#copy src
COPY . .

#test
RUN dotnet test Docker.Test/Docker.Test.csproj
 
#publish
RUN dotnet publish Docker/Docker.csproj -o /publish

#runtime
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim
COPY --from=build-env /publish /publish
WORKDIR /publish
ENTRYPOINT ["dotnet", "Docker.dll"]
