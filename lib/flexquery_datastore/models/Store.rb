module DataStore
  class Store
    include DataMapper::Resource
    storage_names[:default] = "stores"
    property :storeno, Integer, field: "storeno", key: true

    has n, :stocks, child_key: [:storeno]

    property :storecode, Integer, field: "storecode"
    property :name,      String,  field: "storename"
  end
end
