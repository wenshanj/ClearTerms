class Company < ApplicationRecord
    # Relationship
    has_many :tcs

    # Scope
    scope :alphabetical, -> { order('name') }

    # Validation
    validates_presence_of :name, :description, :url, :logo, :crunchbase_url
    validates_uniqueness_of :url, case_sensitive: false

end
