# Create a container with the compiled asp.net core app
# This file is needed only if you plan to package the app as a container in your CI process
FROM microsoft/aspnetcore:2.0

# Create app directory
WORKDIR /app

# Copy files from the artifact staging folder on agent
COPY dotnetcore-sample/out/dotnetcore-sample .

ENTRYPOINT ["dotnet", "dotnetcore-sample.dll"]
