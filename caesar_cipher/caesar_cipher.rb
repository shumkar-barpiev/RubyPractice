
def caesar_cipher(plaintext, key_of_cipher)
    alphabet_arr_capital = Array['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    alphabet_arr_none_capital = Array["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

    cipher_text = ""

    if plaintext.is_a? String 
        l = plaintext.length

        if l < 1
            p "there is not any character"
        else
            for i in 0...l do

                if plaintext[i].ord >= 65 and plaintext[i].ord <= 90
                    index_of_letter = alphabet_arr_capital.find_index(plaintext[i])
                    temp_index = (index_of_letter + key_of_cipher) % 26
                    temp_char = alphabet_arr_capital[temp_index]

                    cipher_text += temp_char
                elsif plaintext[i].ord >= 97 and plaintext[i].ord <= 122
                    index_of_letter = alphabet_arr_none_capital.find_index(plaintext[i])
                    temp_index = (index_of_letter + key_of_cipher) % 26
                    temp_char = alphabet_arr_none_capital[temp_index]

                    cipher_text += temp_char
                else
                    cipher_text += plaintext[i]
                end
            end
        end
    else
        p "invalid input!"
    end

    return cipher_text
end


p caesar_cipher("What a string!", 5)

