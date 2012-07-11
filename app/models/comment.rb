class Comment < ActiveRecord::Base
  attr_accessible :article_id, :body, :email, :name
  belongs_to :article

  validates :name, :email, :body, presence: true
  validate :article_should_be_published

  def article_should_be_published
  	errors.add(:article_id, I18n.t("comments.error.not_published_yet")) if article && !article.published?
  end

end
