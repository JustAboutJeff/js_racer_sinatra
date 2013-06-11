class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :initials, :unique => true , :null => false
      t.timestamps
    end
  end
end