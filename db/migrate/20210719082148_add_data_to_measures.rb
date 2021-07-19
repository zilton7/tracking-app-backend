class AddDataToMeasures < ActiveRecord::Migration[6.1]
  def change
    add_column :measures, :data, :float
  end
end
