class Selfy < ActiveRecord::Base
  validates :body, presence: true
end