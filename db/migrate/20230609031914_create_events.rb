class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.boolean :event_type
      t.references :child, null: false, foreign_key: true
      t.references :guardian, null: false, foreign_key: true

      t.timestamps
    end
  end
end
