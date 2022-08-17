class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    #creating table to hold artists
    create_table :artists do |t|
      #add some columns to this table
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
      #id is automatically generated so no need to specify
    end #ends create table
  end #ends change
end #ends class
