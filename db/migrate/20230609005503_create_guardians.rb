class CreateGuardians < ActiveRecord::Migration[7.0]
  def change
    create_table :guardians do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
