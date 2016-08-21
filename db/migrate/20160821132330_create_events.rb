class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :address
      t.string :email_type
      t.string :event_type
      t.integer :timestamp

      t.timestamps
    end
  end
end
