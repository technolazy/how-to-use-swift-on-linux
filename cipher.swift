let arguments = Process.arguments

let sentence = arguments[1]
let shift = Int(arguments[2])!

var result = [Character]()

for c in sentence.uft16 {
  let value = Int(c) + shift
  result.append(Character(UnicodeScalar(value)))
}

print(String(result))
