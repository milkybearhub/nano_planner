defmodule NanoPlannerWeb.PlanItemsController do
  use NanoPlannerWeb, :controller
  alias NanoPlanner.PlanItem

  def index(conn, _params) do
    plan_items = NanoPlanner.Repo.all(PlanItem)
    render conn, "index.html", plan_items: plan_items
  end
end
