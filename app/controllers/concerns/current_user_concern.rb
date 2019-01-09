module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.firs_name = "Guest"
    guest.last_name = "User"
    guest.email = "user@example.com"
    guest
  end
end
