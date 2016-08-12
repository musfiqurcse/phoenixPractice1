defmodule FirstProject.Repo.Migrations.CreateService do
  use Ecto.Migration

  def change do
    create table(:services) do
      add :body, :text
      add :user_id, :integer

      timestamps()
    end

  end
end
