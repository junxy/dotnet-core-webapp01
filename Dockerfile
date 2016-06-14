FROM microsoft/dotnet:onbuild

# https://github.com/aspnet/EntityFramework/issues/3794
RUN printf "deb http://ftp.us.debian.org/debian jessie main\n" >> /etc/apt/sources.list
RUN apt-get -qq update && apt-get install -qqy sqlite3 libsqlite3-dev && rm -rf /var/lib/apt/lists/*

EXPOSE 5000/tcp