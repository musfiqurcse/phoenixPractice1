defmodule FirstProject.UserView do
  use FirstProject.Web, :view
  alias FirstProject.User
  def first_name( %User{name: name} ) do
  name
  |> String.split(" ")
  |> Enum.at(0)
  end
  def selectListGenerate(%User{name: name, id: id}) do
    item={name,id}
  end
  def itemGet(users) do
    item = for i <- users do
     IO.inspect selectListGenerate(i)
     end
     #item=from(p in users, select: {p.id, p.name})
    IO.inspect item

  end

end
