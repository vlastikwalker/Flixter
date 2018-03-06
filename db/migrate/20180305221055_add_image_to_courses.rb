class AddImageToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :image, :string
  end
end
