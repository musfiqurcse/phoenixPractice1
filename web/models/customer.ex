defmodule FirstProject.Customer do
  use FirstProject.Web, :model
  schema "customer" do
    field :name, :string
    field :username, :string
    field :password , :string, virtual: true
    field :password_hash, :string
    timestamps
  end
end
