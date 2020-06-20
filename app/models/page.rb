class Page < ApplicationRecord

  validates :name, presence: true
  validates :title, presence: true
  validates :text, presence: true

end
