class Question < ActiveRecord::Base
  searchkick conversions: "conversions"

  def search_data
    attributes.merge( conversions: map_conversions)
  end

  # {"ice cream" => 234, "chocolate" => 67, "cream" => 2}
  # https://github.com/ankane/searchkick#keep-getting-better
  def map_conversions
    results = Searchjoy::Search.where(convertable_id: id)
    results.each_with_object(Hash.new(0)) { |element, result| result[element.query] += 1 }
  end
end
