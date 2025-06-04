class Company < PrimaryRecord
  has_one :address, as: :addressable, dependent: :destroy
end
