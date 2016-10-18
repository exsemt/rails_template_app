# frozen_string_literal: true
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  SALUTATION = [:mr, :mrs, :company].freeze
  enum role: { customer: 0, admin: 1, guest: 2 }

  validates :salutation, :name, presence: true
end
