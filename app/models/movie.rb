class Movie < ApplicationRecord
  include PgSearch
  belongs_to :director

  pg_search_scope :search,
                  against: { title: 'B', syllabus: 'A', year: 'C' },
                  associated_against: {
                    director: [:first_name, :last_name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }


  multisearchable against: [:title, :syllabus, :year]

end
