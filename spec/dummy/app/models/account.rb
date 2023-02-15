class Account < ActiveRecord::Base
  has_many :projects
  has_many :global_projects
  has_many :users_accounts
  has_many :users, through: :users_accounts

  default_scope -> { where(deleted_at: nil) }

  has_many :org_users_accounts, class_name: "UsersAccount"
  has_many :org_users, class_name: "User", through: :org_users_accounts
end
