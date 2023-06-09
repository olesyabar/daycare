class CreateJoinTableChildrenGuardians < ActiveRecord::Migration[7.0]
  def change
    create_join_table :children, :guardians do |t|
      # t.index [:child_id, :guardian_id]
      # t.index [:guardian_id, :child_id]
    end
  end
end
