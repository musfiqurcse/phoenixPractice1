defmodule FirstProject.Service do
  use FirstProject.Web, :model

  schema "services" do
    field :body, :string
    field :user_id, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:body, :user_id])
    |> validate_required([:body, :user_id])
  end
end
