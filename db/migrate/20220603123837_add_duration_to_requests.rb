class AddDurationToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :proposed_duration, :integer
  end
end
