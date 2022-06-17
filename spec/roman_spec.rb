# integer input produce output in roman numeral format

# roman_nums_dictionary = []


describe 'roman_numerals' do
    it 'is given 1 returns I' do
        expect(numerals(1)).to eq("I")
    end

    it 'is given 2 returns II' do
        expect(numerals(2)).to eq("II")
    end

    it 'is given 3 returns III' do
        expect(numerals(3)).to eq("III")
    end
    it 'is given 5 returns V' do
        expect(numerals(5)).to eq("V")
    end

    it 'is given 7 returns VII' do
        expect(numerals(7)).to eq("VII")
    end

    it 'is given 9 returns IX' do
        expect(numerals(9)).to eq("IX")
    end

    it 'is given 10 returns x' do
        expect(numerals(10)).to eq("X")
    end
end 

def numerals(number) 
    string_output =  "I" * number
    roman_num_output = string_output
    roman_num_output.gsub!('IIIII', 'V')
    roman_num_output.gsub!('VV', 'X')
    return roman_num_output
end