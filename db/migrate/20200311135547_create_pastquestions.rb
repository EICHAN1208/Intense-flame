class CreatePastquestions < ActiveRecord::Migration[5.2]
  def change
    create_table :pastquestions do |t|

      t.string :prefecture
      t.text :p_question
      t.integer :user_id

      t.timestamps
    end
  end
end
