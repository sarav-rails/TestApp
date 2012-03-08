class CreateRecruitmentOffers < ActiveRecord::Migration
  def change
    create_table :recruitment_offers do |t|
      t.string :description

      t.timestamps
    end
  end
end
