class AlterColumnChannelIdChannel < ActiveRecord::Migration[5.0]
  def self.up
    change_table :channels do |t|
      t.change :id_channel, :string
    end
  end
  def self.down
    change_table :products do |t|
      t.change :id_channel, :integer
    end
  end
end
