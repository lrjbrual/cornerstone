class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :title
      t.string :body
      t.string :scriptures_title
      t.string :scriptures_body
      t.string :godhead_title
      t.string :godhead_body
      t.string :diety_title
      t.string :diety_body
      t.string :salvation_title
      t.string :salvation_body
      t.string :church_title
      t.string :church_body
      t.string :last_title
      t.string :last_body
      t.string :page_title
      t.string :page_notes

      t.timestamps
    end
  end
end
