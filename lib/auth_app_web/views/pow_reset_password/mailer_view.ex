defmodule AuthAppWeb.PowResetPassword.MailerView do
  use AuthAppWeb, :mailer_view

  def subject(:reset_password, _assigns), do: "Reset password link"
end
