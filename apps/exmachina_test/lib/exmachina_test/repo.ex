defmodule ExmachinaTest.Repo do
  use Ecto.Repo,
    otp_app: :exmachina_test,
    adapter: Ecto.Adapters.Postgres
end
