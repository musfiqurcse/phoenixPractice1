defmodule FirstProject.Repo do
  use Ecto.Repo, otp_app: :firstProject

  @moduledoc """
In memory repository.
"""
  def allF(FirstProject.User) do
    [%FirstProject.User{id: "1",name: "Shibly", username: "shibly",password: "123456"},
  %FirstProject.User{id: "2",name: "Karim", username: "karim",password: "45678"},
%FirstProject.User{id: "3",name: "Rahim", username: "rahim",password: "4578"},
%FirstProject.User{id: "4",name: "Kashem", username: "kashem",password: "1234"}]
  end
  def allF(_module) do
     []
   end
  def getItem(module,id) do
    Enum.find allF(module),fn(map)->map.id==id
  end
end
  def getItem_by(module,param) do
    Enum.find allF(module),fn(map)->
      Enum.find?(param,fn{key,val}->Map.get(map,key)==val end)
    end
  end
end
