class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :about_us
      t.string :schedule
      t.string :name
      t.integer :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
