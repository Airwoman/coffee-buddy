class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer :user_id
      t.integer :shop_id
      t.string :meeting_date_time
      t.integer :acceptor_id

      t.timestamps null: false
    end
  end
end
