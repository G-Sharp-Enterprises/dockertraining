#!/bin/bash

# Wait for SQL Server to be ready
echo "Waiting for SQL Server to be ready..."
for i in {1..50};
do
    /opt/mssql-tools18/bin/sqlcmd -C -S database -U sa -P CGIcgi123!@# -Q "SELECT 1" > /dev/null 2>&1
    if [ $? -eq 0 ]
    then
        echo "SQL Server is ready."
        break
    else
        echo "Not ready yet..."
        sleep 1
    fi
done

# Run the SQL script
/opt/mssql-tools/bin/sqlcmd -C -S database -U sa -P CGIcgi123!@# -d master -i /CreateDatabaseAndSeed.sql
