class User < ApplicationRecord
  has_many :values, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A(.+)@(.+)\z/, message: "Email invalid"  }
end
