class AccessionLog < ActiveRecord::Base
  belongs_to :user
  has_one :account
  has_one :patient
end
