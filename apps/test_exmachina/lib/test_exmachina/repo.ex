defmodule TestExmachina.Repo do
  use Ecto.Repo,
    otp_app: :test_exmachina,
    adapter: Ecto.Adapters.Postgres
end
