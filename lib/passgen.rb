#encoding: utf-8
class Passgen

    def create_pass
        vowels = ['а', 'о', 'и','у','ы','е', 'ю','я']
        consonants = ['б', 'в', 'г', 'д', 'ж', 'з', 'к', 'л', 'м', 'н', 'п', 'р', 'с', 'т', 'ф', 'х', 'ч' ]
        result = ''
        length = rand(6..7);
        while result.length < length
            if (result.length%2) == 1 then
                syl = vowels[rand(vowels.length)]
            else
                syl = consonants[rand(consonants.length)]
            end
            result += syl
        end
        return result
    end

end