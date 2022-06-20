defmodule UserTest do
  use ExUnit.Case
  doctest User
  
  @tag params: %{first_name: "Michael", last_name: "Alves", age: 22}
  @tag success_response: {:ok,%{message: "User created!", user: "First_name: Michael", status: 201}}
  @moduletag param: "michael"
  @moduletag bad_request: {:error, %{message: "Erro, user not created", status: 400}}
  describe "create/1" do
    test "user creation returning :ok", %{params: params, success_response: success_response} do
      create_user = User.create(params)
      assert create_user = success_response
    end
  end

  describe "error create/1"  do
    setup %{param: param} do
      %{param: "#{param}"}
    end

    test "user creation returning :error", %{param: param, bad_request: bad_request} do
      create_user = User.create(param)
      assert create_user = bad_request
    end
  end
end
