class WritingResponse < ApplicationRecord
  belongs_to :writer
  belongs_to :writing_prompt
end
