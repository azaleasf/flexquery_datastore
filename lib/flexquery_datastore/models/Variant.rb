module DataStore
  class Variant
    include DataMapper::Resource
    storage_names[:default] = "rp8inventoryitems"
    property :itemsid, Integer, field: "itemsid", key: true

    property :docseqnum,       Integer, field: "docseqnum"
    property :dcs,             String, field: "dcs"
    property :vendorcode,      String, field: "vendorcode"
    property :desc1,           String, field: "desc1"
    property :desc2,           String, field: "desc2"
    property :attr,            String, field: "attr"
    property :size,            String, field: "size"
  end
end