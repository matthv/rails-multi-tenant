class Address < PrimaryRecord
  belongs_to :addressable, polymorphic: true
end
