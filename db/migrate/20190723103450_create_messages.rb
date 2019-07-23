class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :name, null: false
      t.text :email, null: false
      t.text :phone_number, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
