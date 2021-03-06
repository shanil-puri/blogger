class CreateJobs < ActiveRecord::Migration
  def up
    create_table :job do |t|
      t.integer   :owner_id
      t.string    :title
      t.string    :description
      t.integer   :salary
      t.string    :location
      t.integer   :category_id
      t.datetime  :deadline

      t.timestamps
    end
  end

  def down
    drop_table    :job
  end
end