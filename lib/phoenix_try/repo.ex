defmodule PhoenixTry.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_try,
    adapter: Ecto.Adapters.Postgres
end
