class AddPhoneExtensionToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :phone_extension, foreign_key: true
  end
end
