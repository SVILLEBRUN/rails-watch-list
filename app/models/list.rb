# frozen_string_literal: true

class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
  has_one_attached :photo
end
