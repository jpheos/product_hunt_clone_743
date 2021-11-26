class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # def full_name
  #   return last_name.capitalize if first_name.blank?

  #   "#{first_name.capitalize} #{last_name.capitalize}"
  # end

  def full_name
    if first_name.blank?
      last_name.capitalize
    else
      "#{first_name.capitalize} #{last_name.capitalize}"
    end
  end

end
