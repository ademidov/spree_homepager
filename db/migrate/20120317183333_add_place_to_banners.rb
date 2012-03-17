class AddPlaceToBanners < ActiveRecord::Migration
  def change
    add_column :spree_banners, :place, :string
  end
end
