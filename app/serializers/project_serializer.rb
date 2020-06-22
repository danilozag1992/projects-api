class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :slug
end
