class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :blood_group
      t.string :phone

      t.timestamps
    end
  end
end
