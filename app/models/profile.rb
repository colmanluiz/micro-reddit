class Profile < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_id, presence: true
  validates :bio, length: { maximum: 500 }

  def full_name
    "#{first_name} #{last_name}"
  end
end
