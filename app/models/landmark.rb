class Landmark < ActiveRecord::Base
  belongs_to :figure
  has_many :title_figures
  has_many :titles, through: :title_figures
end
