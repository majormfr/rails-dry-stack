class Phone < ApplicationRecord
  validates :kind, :number, presence: true
  validates :number, uniqueness: { case_sensitive: false }

  # enumerates
  enum kind: %i[personal commercial]
  
  belongs_to :phoneble, polymorphic: true
end
