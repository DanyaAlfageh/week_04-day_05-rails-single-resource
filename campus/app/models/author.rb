class Author < ApplicationRecord
    has_many :books, dependent: :destroy
    validates :fname, presence: true,
    length: { minimum: 5 }
end
