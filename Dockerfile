FROM microsoft/dotnet:2.1-sdk AS build-env
WORKDIR /App
COPY . ./
RUN ls
WORKDIR "/App/CoreApi"
RUN dotnet build 
RUN dotnet publish 
RUN ls

FROM microsoft/dotnet:2.1-aspnetcore-runtime AS runtime
WORKDIR /App
COPY --from=build-env //App/CoreApi/bin/Debug/netcoreapp2.1/publish/ .
ENTRYPOINT ["dotnet", "ioiooiiioiollkklkllilililliilililiililiklil.dll"]