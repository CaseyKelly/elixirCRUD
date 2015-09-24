defmodule Splurty.Supervisor do
  use Supervisor

  def start_link do
    :supervisor.start_link(__Module__, [])
  end

  def init([]) do
    #adding repo to be sent into supervise
    tree = [
      worker(Repo, []),
      worker(Splurty.Endpoint, []),
    ]
    supervise(tree, strategy: :one_for_one)
  end
end