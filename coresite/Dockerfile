#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat

FROM mcr.microsoft.com/dotnet/core/aspnet:2.1 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:2.1 AS build
WORKDIR /src
COPY ["coresite/coresite.csproj", "coresite/"]
# Restore dependencies/packages
RUN dotnet restore "coresite/coresite.csproj"
# COPY command copies the first param on my machine to the second param location in the image.
COPY . .
WORKDIR "/src/coresite"
RUN dotnet build "coresite.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "coresite.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "coresite.dll"]