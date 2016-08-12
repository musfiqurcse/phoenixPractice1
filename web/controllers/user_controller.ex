defmodule FirstProject.UserController do
      use FirstProject.Web, :controller
      def index(conn, _params) do
        users=Repo.allF(FirstProject.User)
        render conn, "index.html", users: users
      end
      def show(conn,%{"id" => id}) do
        user = Repo.getItem(FirstProject.User,id)
        render conn, "show.html", user: user
      end
end
