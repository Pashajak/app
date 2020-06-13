class AddAnswerToTroubleshoot < ActiveRecord::Migration[6.0]
  def change
    add_column :troubleshoots, :answer, :text
  end
end
