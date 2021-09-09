class House < ApplicationRecord
    # def people
    #     Person.find(person_id)
    # end
    has_many(:people, {
        primary_key: :id, #house_id
        foreign_key: :house_id, 
        class_name: :Person

    })
end