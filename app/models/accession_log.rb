class AccessionLog < ActiveRecord::Base
  belongs_to :user
  has_one :account
end
