class SearchController < ApplicationController
  def index
    @model = SearchHelper::SEARCHABLE_MODELS.fetch(params[:model] || 'user')
    @fields = @model::SEARCHABLE_FIELDS
    @query = params[:query]
    @records = 
      if @query
        ::SearchService.call(@model, params[:field], @query)
      else
        {}
      end
  end
end
