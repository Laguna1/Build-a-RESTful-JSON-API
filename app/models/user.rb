# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  has_many :todos, foreign_key: :created_by

  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, length: { minimum: 3 }
  validates :password_digest, presence: true, length: { minimum: 6 }
end
