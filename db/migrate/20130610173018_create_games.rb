class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :winner, :limit => 3
      t.time :win_time
      t.timestamps
    end
  end
end
