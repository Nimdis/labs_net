class News < ActiveRecord::Base
  scope :sort_by_date, ->(*) { order(:created_at => :desc)  }
  scope :last_added, ->(count=5) { order(:created_at => :desc).limit(count)  }

  validates :title, :presence => true
  validates :body, :presence => true
  validates :short_body, :presence => true

  def date
    created_at.strftime("%B %d, %Y")
  end
end
