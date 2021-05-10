class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :logo
      t.date :last_crawled_date
      t.string :tc_filename
      t.string :tc_url
      t.string :crunchbase_url

      t.timestamps
    end
  end
end
