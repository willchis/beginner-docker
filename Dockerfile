FROM mcr.microsoft.com/dotnet/core/runtime:2.1

COPY app/bin/Release/netcoreapp2.1/publish/ app/

ENTRYPOINT ["dotnet", "app/randomfacts.dll"]