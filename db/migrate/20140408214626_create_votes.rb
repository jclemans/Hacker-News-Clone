class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote, :default => 0
    end

    remove_column :posts, :vote

  end
end
