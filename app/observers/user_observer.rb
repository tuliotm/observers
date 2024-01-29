class UserObserver < ApplicationObserver

  def after_save(user)
    if action?(user, [:update])
      Rails.logger.info ">>>> User #{user.name} was updated. Mudanças: #{user.previous_changes}"
    end
  end
end
