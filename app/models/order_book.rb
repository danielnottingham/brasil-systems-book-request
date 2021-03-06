class OrderBook < ApplicationRecord
  validates :bond_type, :title, :author, :edition, :issn, :year_publication, :publishing_company, presence: true
  enum bond: [:Discente, :Doscente, :Técnico]
end
