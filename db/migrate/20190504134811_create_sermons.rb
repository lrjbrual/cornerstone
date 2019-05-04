class CreateSermons < ActiveRecord::Migration[5.2]
  def change
    create_table :sermons do |t|
      t.string :title
      t.string :body
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
