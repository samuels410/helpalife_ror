class User < ApplicationRecord
  validates_presence_of :name, :blood_group, :phone, :phone_extension_id
  validates :phone, :presence => { :message => 'must be given please 10 digit phone number' }
  validates :phone, :numericality => true, :length => { is: 10, :message => 'Phone is the wrong length (Should be 10 digit)' }
  validates_presence_of :otp_no
  has_one_time_password column_name: :otp_no, length: 4
end
