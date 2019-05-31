class CreateWritingPrompts < ActiveRecord::Migration[5.2]
  def change
    create_table :writing_prompts do |t|
      t.text :fiction_prompt

      t.timestamps
    end
  end
end
