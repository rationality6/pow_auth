defmodule AuthAppWeb.PowEmailConfirmation.MailerView do
  use AuthAppWeb, :mailer_view

  def subject(:email_confirmation, _assigns), do: "Confirm your email address"
end
