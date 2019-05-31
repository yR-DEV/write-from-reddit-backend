class WritingpromptSerializer < ActiveModel::Serializer
  has_many :writing_responses
  attributes :id, :fiction_prompt
end
