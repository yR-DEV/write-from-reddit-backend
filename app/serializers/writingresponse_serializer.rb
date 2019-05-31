class WritingresponseSerializer < ActiveModel::Serializer
  belongs_to :writer, :writing_prompt
  attributes :id, :fiction_response
end
