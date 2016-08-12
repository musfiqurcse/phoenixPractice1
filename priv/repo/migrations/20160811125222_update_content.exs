defmodule FirstProject.Repo.Migrations.UpdateContent do
  use Ecto.Migration

  def change do
      alter table (:content) do
        timestamps
      end
  end
end
