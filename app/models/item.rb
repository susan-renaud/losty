class Item < ApplicationRecord
  belongs_to :user
  has_many :claims, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
                  against: %i[name location],
                  using: { tsearch: { prefix: true } }

  def can_i_claim_it?(user)
    !self.claims.pluck(:user_id).include?(user.id)
  end

  def was_my_claim_accepted?(user)
    self.claimed && self.claims.find_by(user: user).accepted == "true"
  end

  def is_already_claimed(user)
    self.claims.where(accepted: "true").first &&
      self.claims.where(accepted: "true").first.user != user
  end

  def is_my_claim_denied?(user)
    self.claims.where(user: user).first.accepted == "false"
  end
end
