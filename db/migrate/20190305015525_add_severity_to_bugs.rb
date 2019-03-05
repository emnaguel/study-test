class AddSeverityToBugs < ActiveRecord::Migration[5.2]
  def change
    add_column :bugs, :severity, :string
  end
end
