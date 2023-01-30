# SQLDatabaseProject
## run docker container
sudo docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=Passw0rd" \
   -p 1433:1433 --name sql1 --hostname sql1 \
   -d \
   mcr.microsoft.com/mssql/server:2022-latest

## access sql server
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "Passw0rd"

sqlcmd -S localhost,1433 -U SA -P "Passw0rd>"

## web site
https://learn.microsoft.com/ja-jp/sql/linux/quickstart-install-connect-docker?view=sql-server-ver16&pivots=cs1-bash
