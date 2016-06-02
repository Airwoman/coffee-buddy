class Meeting < ActiveRecord::Base
  validates :meeting_date_time , presence: true

  belongs_to :organizer, class_name: 'Casein::AdminUser', foreign_key: :user_id
  belongs_to :shop
  belongs_to :acceptor, class_name: 'Casein::AdminUser'
end
