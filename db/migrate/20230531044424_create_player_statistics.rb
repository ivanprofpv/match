class CreatePlayerStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :player_statistics do |t|
      t.belongs_to :player
      t.belongs_to :game
      t.belongs_to :achivment
      t.belongs_to :team

      t.timestamps
    end
  end
end
