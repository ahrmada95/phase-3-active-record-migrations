#connecting to the database with ActiveRecord
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/artists.sqlite"
)

#create table query
sql = <<-SQL
    CREATE TABLE IF NOT EXISTS artists (
        id INTEGER PRIMARY KEY,
        name TEXT,
        genre TEXT,
        age INTEGER,
        hometown TEXT
    )
SQL

#execute query command
ActiveRecord::Base.connection.execute(sql)

#  To tell Active Record how to connect to the database from here on out, 
#  we'll use a config/database.yml file. This file is used by convention 
#  to give Active Record the necessary details about how to connect to our 
#  database, like which "adapter" we are using (right now, we're using SQLite, 
#  but Active Record supports other database adapters such as MySQL and 
#  PostgreSQL as well), and the name of the database file.

class Artist < ActiveRecord::Base

end