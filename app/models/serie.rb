class Serie < ApplicationRecord
  include PgSearch
  multisearchable against: [:title, :syllabus, :year]

end
