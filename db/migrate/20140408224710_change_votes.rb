class ChangeVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :vote
  end
end
