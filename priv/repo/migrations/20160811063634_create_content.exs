defmodule FirstProject.Repo.Migrations.CreateContent do
  use Ecto.Migration

  def change do
    alter table (:content) do
      add :name, :string
      add :details, :string
      add :contentid, :string, null: false
      add  :authorized_by, :string
      timestamps
    end

    create unique_index(:content, [:name])
  end
end
