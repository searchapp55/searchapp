class SearchService
  def self.call(model, field, query)
    model.where(field => query).as_json(only: model::SEARCHABLE_FIELDS)
  end
end