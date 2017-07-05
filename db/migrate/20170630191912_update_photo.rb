class UpdatePhoto < ActiveRecord::Migration[5.1]
  def change
    change_column :tastings, :photo, :string, default: "https://s3.us-east-2.amazonaws.com/wine-tasting-at-home/defaultwine.jpg"
  end
end
