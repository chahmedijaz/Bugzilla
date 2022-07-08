class User < ApplicationRecord

  has_many :projects, foreign_key: "manager_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  enum user_type: [:developer, :manager, :qa]

end
