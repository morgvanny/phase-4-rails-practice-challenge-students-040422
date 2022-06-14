class DetailedInstructorSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at
  has_many :students, serializer: SimplifiedStudentSerializer
end
