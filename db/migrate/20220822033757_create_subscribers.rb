class CreateSubscribers < ActiveRecord::Migration[6.1]
  def change
    create_table :subscribers do |t|
      t.timestamps
      t.string :name
      t.string :email
      t.integer :status, default: 0
    end
  end
end
