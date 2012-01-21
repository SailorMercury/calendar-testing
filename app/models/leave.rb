class Leave < ActiveRecord::Base
  belongs_to :user
  validates :reason, :presence => true
  validates :start_date, :presence => true
  validates :end_date, :presence => true
  validates :user_id, :presence => true
end
