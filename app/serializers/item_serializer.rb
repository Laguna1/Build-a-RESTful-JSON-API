class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :done

  belongs_to :todo
end
