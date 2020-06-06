class AddParentToTroubleshoot < ActiveRecord::Migration[6.0]
  def change
    add_column :troubleshoots, :root_id, :integer
  end
end
