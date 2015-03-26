defmodule Skeleton4Test do
  use ExUnit.Case

  test "create 100 users, roles" do
    
    users = 1..1000
    |> Enum.map fn( num ) ->
      username = "U-" <> Misc.Random.string
      IO.puts username
      user = %Skeleton4.User{ username: username }
      Skeleton4.Repo.insert user
    end

    roles = 1..100
    |> Enum.map fn( num ) ->
      rolename = "R-" <> Misc.Random.string
      IO.puts rolename
      role = %Skeleton4.Userrole{ name: rolename }
      Skeleton4.Repo.insert role
    end
    
    users
    |> Enum.each fn( user ) ->
      # link 1 to 10 roles to this user
      0..(:random.uniform 10)
      |> Enum.each fn( num ) ->
        role = roles |> Enum.at :random.uniform( length( roles ) - 1 )
        try do
          map = %Skeleton4.UserUserroleMap{ user_id: user.id, userrole_id: role.id }
          Skeleton4.Repo.insert map
        rescue
          e in Postgrex.Error -> nil 
        end
      end
    end

  end
end
