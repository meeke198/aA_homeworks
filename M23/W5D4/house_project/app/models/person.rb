class Person < ApplicationRecord
    # def houses
    #     House.where({house_id: self.id})
    # end

    belongs_to(:house, {
        primary_key: :id #House's id
        foreign_key: :person_id #Person's id
        class_name: :Person

    })
end