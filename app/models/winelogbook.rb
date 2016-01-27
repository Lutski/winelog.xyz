class Winelogbook < ActiveRecord::Base
  has_many :wines, dependent: :destroy
end
