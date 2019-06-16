FROM mcr.microsoft.com/dotnet/core/sdk:2.2-stretch
WORKDIR /integration

COPY Test.Integration.csproj .
RUN dotnet restore

COPY . .
ENTRYPOINT ["dotnet", "test"]
