class AddLinks < ActiveRecord::Migration[6.0]
  def change
    add_column :troubleshoots, :link_to, :text
  end
end
