class CreatePhoneExtensions < ActiveRecord::Migration[6.0]
  def change
    create_table :phone_extensions do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
