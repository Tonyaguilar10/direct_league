class AddFieldRefToRequests < ActiveRecord::Migration[6.1]
  def change
    add_reference :requests, :field, null: false, foreign_key: true
  end
end
