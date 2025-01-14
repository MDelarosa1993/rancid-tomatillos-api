class MoviePosterSerializer < ActiveModel::Serializer
  attributes :id, :poster_path, :title, :vote_count
end
