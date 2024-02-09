# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :timeoutable
    # Override Devise method to allow users to sign in without confirmation
    def active_for_authentication?
      super && (confirmed? || !confirmation_required?)
    end

    # Override Devise method to not require confirmation when creating the user
    def confirmation_required?
      false
    end
end
