class AddLiveAndGitHubLinksToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :live, :string
    add_column :projects, :github, :string, null: false
  end
end
