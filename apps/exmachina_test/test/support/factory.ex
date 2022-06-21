defmodule ExmachinaTest.Factory do
  use ExMachina.Ecto, repo: ExmachinaTest.Repo

  def user_factory do
    %ExmachinaTest.Accounts.User{
      name: "Michael #{Enum.random(0..100)}",
      age: Enum.random(0..99)
    }
  end

  def user_update_factory do
    %ExmachinaTest.Accounts.User{
      name: "João #{Enum.random(0..100)}",
      age: Enum.random(0..99)
    }
  end

end
