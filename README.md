# liquibase-mysql-multiline

This is to test the mysql multiple line issue discussed in  (https://forum.liquibase.org/t/you-have-an-error-in-your-sql-syntax-check-the-manual-that-corresponds-to-your-mysql-server-version-for-the-right-syntax-to-use-near-at-line-14/6847)


A mysql and an aurora mysql are setup.  

Use AWS Aurora driver and mysql driver to test Aurora to check if this is caused by driver 

Use mysql driver to test mysql to confirm liquibase does not have an issue

Having same issue with mysql 

It seems the delimiter was not set


## Solution


Set delimiter in the changelog.yml instead of sql file


Need to set
spring.datasource.driver-class-name=software.aws.rds.jdbc.mysql.Driver in order to pickup aurora driver
otherwise the default logic matches it to mysql driver in org.springframework.boot.jdbc.DatabaseDriver

