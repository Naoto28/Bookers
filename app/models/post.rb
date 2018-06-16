class Post < ApplicationRecord
  validates :title, :body,    length: { minimum: 1 }
end
