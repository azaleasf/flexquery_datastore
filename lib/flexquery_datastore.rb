require "flexquery_datastore/version"
require "data_mapper"

DataMapper::Logger.new($stdout, :debug) if ENV['LOG_DATASTORE_QUERIES']
DataMapper.setup(:default, ENV['DATASTORE_POSTGRES_URL'])
Dir[File.dirname(__FILE__) + '/flexquery_datastore/models/*.rb'].each {|file| require file }
