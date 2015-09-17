module DataStore
  class Category
    include DataMapper::Resource
    storage_names[:default] = "rp8inventorydepartments"
    property :dcs, String, field: "dcs", key: true

    property :dept, String, field: "dept"
    property :class, String, field: "class"
    property :subclass, String, field: "subclass"
    property :dcsname, String, field: "dcsname"
    property :deptname, String, field: "deptname"
    property :classname, String, field: "classname"
    property :subclassname, String, field: "subclassname"
    property :puredcs, String, field: "puredcs"

    def products
      product_ids = repository.adapter
        .select('SELECT desc1 FROM rp8inventoryitems WHERE dcs = ?', self.dcs)
        .uniq
      DataStore::Product.all(desc1: product_ids, unique: true)
    end

    def variants
      DataStore::Variant.all(dcs: self.dcs)
    end
  end
end
