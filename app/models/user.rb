class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :roles
  has_many :submissions
  has_many :comments

  acts_as_voter
 

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  
  ROLES = {0 => :guest, 1 => :user, 2 => :admin}

  def role?(role)
    roles.map(&:name).include? role.to_s
  end
  


  def admin?
    role == "admin"
  end
  def guest?
     role == "guest"
  end


end