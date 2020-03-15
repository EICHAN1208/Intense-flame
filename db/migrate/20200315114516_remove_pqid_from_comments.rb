class RemovePqidFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :pq_id, :integer
  end
end
