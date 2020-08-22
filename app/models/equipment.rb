class Equipment < ApplicationRecord
    has_many :salesoffices, dependent: :destroy
end
