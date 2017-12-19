class CreateDeptNews < ActiveRecord::Migration
  def change
    create_table :dept_news do |t|
      t.text :marathi_text
      t.text :english_text
      t.text :news_url
      t.date :updated_at

      t.timestamps
    end
  end
end
