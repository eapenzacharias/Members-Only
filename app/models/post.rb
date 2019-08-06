class Post < ApplicationRecord
    validates :title, presence: true, length: { maximum: 50 }
    validates :content, presence: true, length: { minimum: 5 }
    belongs_to :user
end
