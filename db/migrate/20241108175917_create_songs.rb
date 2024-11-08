class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      # TODO: Define the Database object attributes for songs here

      t.timestamps
    end
  end
end
