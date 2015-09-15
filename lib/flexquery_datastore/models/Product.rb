module DataStore
  class Product
    include DataMapper::Resource
    storage_names[:default] = "rp8inventoryitems"
    property :desc1, String, field: "desc1", key: true

    has n, :variants, child_key: [:desc1]
  end
end
