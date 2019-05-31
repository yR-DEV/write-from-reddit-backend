class CreateWritingResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :writing_responses do |t|
      t.text :fiction_response
      t.references :writer, foreign_key: true
      t.references :writing_prompt, foreign_key: true

      t.timestamps
    end
  end
end
