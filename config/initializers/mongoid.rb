# config/initializers/mongoid.rb

# convert object key "_id" to "id" and remove "_id" from displayed attributes on mongoid documents when represented as JSON
module Mongoid
  module Document
    def as_json(options={})
      attrs = super(options)
      id = {id: attrs["_id"].to_s}
      attrs.delete("_id")
      id.merge(attrs)
    end
  end
end
