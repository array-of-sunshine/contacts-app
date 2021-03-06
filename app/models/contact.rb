class Contact < ApplicationRecord
  has_many :contact_groups
  has_many :groups, through: :contact_groups
  belongs_to :user

  def friendly_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def full_name
    # first name + last name
    "#{first_name} #{last_name}"
  end

  def japanese_phone_number
    "+81 #{phone_number}"
  end
end
