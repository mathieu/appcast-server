class AddParamsToImpressions < ActiveRecord::Migration
  def change
    add_column :impressions, :params, :text
  end
end
