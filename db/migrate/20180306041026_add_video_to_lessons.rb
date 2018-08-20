class AddVideoToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :videos, :string
  end
end
