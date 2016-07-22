class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :items

  def admin?
  	self.role.name == "Admin"
  end

  def technical?
  	self.role.name == "Technical"
  end
  
end
