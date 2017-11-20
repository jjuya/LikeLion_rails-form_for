class AddImgUrlToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :img_url, :string
  end
end
