class News < ApplicationRecord

  include ImageHelper

  validates :title, presence: true
  validates :description, presence: true

end
