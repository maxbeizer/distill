defmodule Distill.Repo do
  use Ecto.Repo,
    otp_app: :distill,
    adapter: Ecto.Adapters.Postgres
end
