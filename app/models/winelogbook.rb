class Winelogbook < ActiveRecord::Base
  has_many :wines, dependent: :destroy
  scope :recent, -> { order("created_at DESC")}
end
