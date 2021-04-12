# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :todo

  validates :name, presence: true, length: { minimum: 3 }
end
