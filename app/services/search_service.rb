class SearchService
  def self.call(model, field, query)
    if model::ARRAY_FIELDS.include?(field.to_sym)
      # strip most non alphanumeric characters to avoid PG errors
      query = query.gsub(/[^0-9a-z,.\' ']/i, '')
      # search on PG array fields
      # field is already sanitized above
      res = model.where("#{field} @> ?", "{#{query}}")
    else
      res = model.where(field => query)
    end
    res.as_json(only: model::SEARCHABLE_FIELDS)
  end
end