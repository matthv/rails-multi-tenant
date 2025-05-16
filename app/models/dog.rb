class Dog < SecondaryRecord
  def owner
    Owner.find(owner_id) if owner_id
  end
end
