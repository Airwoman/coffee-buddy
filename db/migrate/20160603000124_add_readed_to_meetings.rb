class AddReadedToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :readed, :boolean, :default => false
  end
end
