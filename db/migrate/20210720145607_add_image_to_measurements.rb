class AddImageToMeasurements < ActiveRecord::Migration[6.1]
  def change
    add_column :measurements, :image, :string
  end
end
