class Dog < SecondaryRecord
  # def owner
  #   Owner.find(owner_id) if owner_id
  # end

  belongs_to :owner, foreign_key: :owner_id, optional: true
end
