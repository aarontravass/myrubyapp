class Current < ActiveSupport::CurrentAttributes
  attribute :user, :account
  attribute :request_id, :user_agent, :ip_address

  def user=(user)
    super
    self.account = user.account
  end
end
