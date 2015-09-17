module DataStore
  class Store
    include DataMapper::Resource
    storage_names[:default] = "stores"
    property :storeno, Integer, field: "storeno", key: true

    property :storecode, Integer, field: "storecode"
    property :name,      String,  field: "storename"

    def stocks
      DataStore::Stock.all(storeno: self.storeno)
    end
  end
end
