ROM::SQL.migration do
  change do
    create_table :articles do
      primary_key :id
      column :slug, :text, null: false, unique: true
      column :title, :text, null: false
      column :body, :text, null: false
      column :published, :boolean, default: false, null: false
      column :published_at, :timestamp
      column :created_at, :timestamp, null: false, default: Sequel.lit("(now() at time zone 'utc')")
      column :updated_at, :timestamp, null: false, default: Sequel.lit("(now() at time zone 'utc')")
    end
  end
end
