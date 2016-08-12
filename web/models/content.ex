defmodule FirstProject.Content do
  use FirstProject.Web, :model
  schema "content" do
    field :name, :string
    field :details, :string
    field :contentId, :string, virtual: true
    field :authorized_by, :string
    timestamps
  end
end
