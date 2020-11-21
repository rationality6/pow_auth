defmodule AuthApp.Email do
  use Bamboo.Phoenix, view: AuthApp.EmailView

  @spec welcome_email :: Bamboo.Email.t()
  def welcome_email do
    new_email(
      to: "codepawn@icloud.com",
      from: "codepawn@icloud.com",
      subject: "Welcome to the app.",
      html_body: "<strong>Thanks for joining!</strong>",
      text_body: "Thanks for joining!"
    )
  end

  def movie_removal_email() do
    new_email(
      from: "codepawn@icloud.com",
      to: "codepawn@icloud.com",
      subject: "A movie was deleted",
      text_body: "A movie was removed from the site.",
      html_body: "<p>A movie was removed from the site</p>"
    )
  end
end
