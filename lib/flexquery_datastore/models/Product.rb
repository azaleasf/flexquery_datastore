module DataStore
  class Product
    include DataMapper::Resource
    storage_names[:default] = "rp8inventoryitems"
    property :desc1, String, field: "desc1", key: true

    belongs_to :vendor, child_key: [:vendorcode]
    belongs_to :category, child_key: [:dcs]

    property :dcs,        String, field: "dcs"
    property :vendorcode, String, field: "vendorcode"
    property :desc1,      String, field: "desc1"
    property :desc2,      String, field: "desc2"
    property :alu,        String, field: "alu"
    property :season,     String, field: "udf0"
    property :year,       String, field: "udf1"
    property :core,       String, field: "udf2"
    property :udf3,       String, field: "udf3"
    property :stylesid,   Integer, field: "stylesid"

    def variants
      DataStore::Variant.all(desc1: self.desc1)
    end
  end
end
