class AddOwnerBugToBugs < ActiveRecord::Migration[5.2]
  def change
    add_column :bugs, :owner_bug, :string
  end
end
