class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  validates :description, presence: true
  validates :category_id, presence: true
  validates :user_id, presence: true


  def changes
  	puts "change"
  end

end
