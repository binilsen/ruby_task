# [1,2,3,4,5,6,7,8,9,0] => (123)456-7890

def createPhoneNumber num_arr
    phone_regx=/[(]{1}[0-9]*[)]{1}[0-9]*[-]{1}[0-9]*/
    return if num_arr.length!=10
    phone='('
    num_arr.each.with_index do |element,index|
        phone+=element.to_s
        phone+=')' if index==2
        phone+='-' if index==5
    end
    p phone if phone.match phone_regx
end
createPhoneNumber (0..9).to_a