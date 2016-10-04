class Person < ActiveRecord::Base
    
    def self.calculate_birth_number(birthDate)
    yourBirthNumber= 0
    while birthDate.length > 1 do
        for counter in 0..birthDate.length
            yourBirthNumber += birthDate[counter].to_i
        end
            birthDate = yourBirthNumber.to_s
            yourBirthNumber = 0
    end
     birthDate
end

def self.valid_birthdate(input)
	if input.length == 8 && input.match(/^[0-9]+[0-9]$/)
		return true
	else
		return false
	end
end

def self.message_to_display(calculated_number)
    case calculated_number.to_i
    when 1
         "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
    when 2
         "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when 3
         "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
    when 4
         "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
    when 5
         "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
    when 6
         "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
    when 7
         "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
    when 8
         "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
    when 9
         "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    else
         "Uh oh! Your birth path number is not 1-9!"
    end
end
end