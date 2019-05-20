class Author < ApplicationRecord
    validates :fname, presence: true,
    length: { minimum: 5 }
end
