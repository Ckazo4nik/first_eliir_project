defmodule Pxblog.CommentTest do
  use Pxblog.ModelCase

  alias Pxblog.Comment

  @valid_attrs %{approved: true, author: "some author", body: "some body"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Comment.changeset(%Comment{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Comment.changeset(%Comment{}, @invalid_attrs)
    refute changeset.valid?
  end
end
