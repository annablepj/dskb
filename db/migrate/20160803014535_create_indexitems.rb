class CreateIndexitems < ActiveRecord::Migration
  def change
    create_table :indexitems do |t|
      t.string :name
      t.string :attachment
      t.string :title
      t.string :description
      t.string :record_type
      t.string :category
      t.string :format
      t.string :url
      t.string :authors
      t.string :publication_date
      t.string :tools_used
      t.string :concepts_used
      t.string :data_sources
      t.string :attachment_url

      t.timestamps null: false
    end
  end
end
