class Task < ApplicationRecord
  has_many :dones
  has_many :users, through: :dones

  def check_done(user)
    Done.where(user: user, task: self).exists?
  end
end
