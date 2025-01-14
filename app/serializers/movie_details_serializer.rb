class MovieDetailsSerializer < ActiveModel::Serializer
  attributes :backdrop_path, :genre_ids, :id, :original_language, :overview, :popularity, :poster_path, :release_date, :title
end
