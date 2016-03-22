class Post < ActiveRecord::Base
    attr_accessor :tag_titles
    belongs_to :user
    validates :user, presence: true
    validates :title, presence: true
    validates :body, presence: true
    has_many :categorizations
    has_many :tags, through: :categorizations
end
