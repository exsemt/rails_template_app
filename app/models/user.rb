class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  SALUTATION = [:mr, :mrs, :company]
  enum role: { customer: 0, admin: 1, guest: 2 }

  validates :salutation, :name, presence: true

end
