class CreatePacients < ActiveRecord::Migration[5.2]
  def change
    create_table :pacients do |t|
      t.string :interviewer_email
      t.string :name
      t.string :sex
      t.date :birth
      t.string :occupation
      t.string :phone
      t.string :protesis
      t.string :oralSex
      t.text :observation
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :totalExposition
      t.string :dayPeriod
      t.string :startedTabagism
      t.string :frequenceSmoking
      t.string :stopedSmoking
      t.string :whatSmoked
      t.string :startedDrinking
      t.string :frequenceDrinking
      t.string :stopedDrinking
      t.string :whatDrinked
      t.string :whoHadCancer

      t.timestamps
    end
  end
end
