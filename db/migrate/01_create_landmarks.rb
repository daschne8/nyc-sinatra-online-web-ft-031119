class CreateLandmarks < ActiveRecord::Migration[5.2]
  raise 'Write CreateLandmarks migration here'
  def change
    create_table :landmarks do |t|
      t.string :name
    end
  end


end
