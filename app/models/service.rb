class Service < ApplicationRecord
  has_many :proposals
  has_many :requests
end
