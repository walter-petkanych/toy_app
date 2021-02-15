class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :vote
      t.integer :micropost_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
