class Title < ActiveRecord::Base
  has_many :title_figures
  has_many :figures, through: :figure_titles
end
