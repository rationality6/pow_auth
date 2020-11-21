defmodule AuthAppWeb.PowMailer do
  use Pow.Phoenix.Mailer
  require Logger

  require AuthApp.Mailer
  require AuthApp.Email

  def cast(%{user: user, subject: subject, text: text, html: html, assigns: _assigns}) do
    # Build email struct to be used in `process/1`

    %{to: user.email, subject: subject, text: text, html: html}
  end

  def process(email) do
    # Send email

    Logger.debug("E-mail sent: #{inspect email}")

    AuthApp.Email.movie_removal_email()
    |> AuthApp.Mailer.deliver_later()
  end
end
