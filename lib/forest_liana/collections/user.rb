class ForestLiana::Collections::User
  include ForestLiana::Collection

  collection :User, is_searchable: true

  field :full_name_id, type: "String" do
    "#{object.name} - #{object.id}"
  end
end

