json.extract! pacient, :id, :name, :sex, :birth, :occupation, :phone, :protesis, :oralSex, :observation, :street, :neighborhood, :city, :state, :totalExposition, :dayPeriod, :startedTabagism, :frequenceSmoking, :stopedSmoking, :whatSmoked, :startedDrinking, :frequenceDrinking, :stopedDrinking, :whatDrinked, :whoHadCancer, :created_at, :updated_at
json.url pacient_url(pacient, format: :json)
