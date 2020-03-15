class AddPastquestionIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :pastquestion_id, :integer
  end
end
