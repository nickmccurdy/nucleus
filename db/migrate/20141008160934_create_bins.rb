class CreateBins < ActiveRecord::Migration
  def change
    create_table :bins do |t|
      t.string :title
      t.text :description
      t.text :body

      t.timestamps
    end
  end
end
