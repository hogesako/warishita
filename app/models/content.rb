class Content < ApplicationRecord
    paginates_per 10
    belongs_to :category
end
