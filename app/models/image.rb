class Image < ApplicationRecord
  belongs_to :weapon

  validates :url, presence: true
  

end
