class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      # TODO: Define the Database object attributes for artists here

      t.timestamps
    end
  end
end
