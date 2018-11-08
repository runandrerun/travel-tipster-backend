# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# FOREX = "https://www.getforexdata.com/api/latest?access_key=t86fgt4ri2k70cd9obma2ymbm0xw6mx0hc3xufgibak22y6x75cud5sroawzgf17"
#
# https://www.getforexdata.com/api/convert?access_key=t86fgt4ri2k70cd9obma2ymbm0xw6mx0hc3xufgibak22y6x75cud5sroawzgf17&from=USD&to=EUR&amount=25
#
# fetch(FOREX, {
#     method: 'GET',
#     mode: 'cors',
#     headers: new Headers({
#         'Accept': 'application/json',
#         "Content-Type": "application/json",
#         'Access-Control-Allow-Origin':'*',
#     })
# }).then(res => res.json())
#
# currencies = JSON.parse(RestClient.get(FOREX))
#
#
#
# def fetch_currencies(currencies)
#   puts currencies["rates"]
#   # currencies.each do |x|
#   #   puts x
#   # end
#   # result = JSON.parse(RestClient.get(url))
#   # create_park(result)
# end
#
# fetch_currencies(currencies)

solution = (A) => {
    var rightSum = A.reduce((acc, val) => acc + val, 0), leftSum = 0;

    for (var i = 0; i < A.length; i++) {

        rightSum -= A[i];

        if (rightSum === leftSum) return i;
        leftSum += A[i];
    }
    return -1;
}


complementaryPairs = (Target, Number_Array) => {
    let count = 0
    for (let i = 0; i < Number_Array.length; i++) {
        for (let j = i; j < Number_Array.length; j++) {
            if (Number_Array[i] + Number_Array[j] === Target) {
                if (i != j) {
                    count += 2
                } else {
                    count++
                }
            }
        }
    }
    return count
}

solution = (A) => {
  let moves = 0;
  let position = 0;


}

THE_PAWN_WAS_HERE = 'The Pawn was here'

def solution (jumping_area)

  jumps = 0
  position = 0

  loop do

    landing_position = jumping_area[position]
    jumping_area[position] = THE_PAWN_WAS_HERE

    return jumps if jumped_away?(landing_position)
    return -1 if infinite_jumping_session?(landing_position)

    position = position + landing_position

    jumps += 1

  end

  jumps

end

def jumped_away?(value)
  value.nil?
end

def infinite_jumping_session?(value)
  THE_PAWN_WAS_HERE == value
end
