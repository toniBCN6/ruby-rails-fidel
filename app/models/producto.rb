class Producto < ApplicationRecord
    validates :name, :description, :price, presence: true
end
