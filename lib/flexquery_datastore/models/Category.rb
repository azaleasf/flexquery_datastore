module DataStore
  class Category
    include DataMapper::Resource
    storage_names[:default] = "rp8inventorydepartments"
    property :dcs, String, field: "dcs", key: true

    has n, :variants, child_key: [:dcs]
    has n, :products, child_key: [:vendorcode]
  end
end
