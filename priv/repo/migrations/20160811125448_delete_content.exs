defmodule FirstProject.Repo.Migrations.DeleteContent do
  use Ecto.Migration

  def change do
      drop table (:content) do
      end
  end
end
