defmodule User do
  def create(%{first_name: first_name, last_name: last_name, age: age}) do
  {:ok,%{message: "User created!", user: "First_name: #{first_name}", status: 201}}
  end

  def create(_params) do
    {:error, %{message: "Erro, user not created", status: 400}}
  end
end
