class ForestLiana::Collections::Owner
  include ForestLiana::Collection

  collection :Owner, is_searchable: true

  field :demo_smart_field, type: "String" do
    object.dog&.created_at
  end
end

