#comment one line
#content comment

#comment many line
=begin
content comment
=end

#input text
gets.chomp

#write text
print

#write text with new line
puts

#aritmatika
i = 2
kuadrat: i ** 2
tambah: i + 1
kurang: i - 1
bagi: i / 2 # other way: i.fdiv(2)
hasil bagi: i % 2 # output is 0


#write variabel
v = "test"
puts "value v : "+v

#write variabel with on string
v = "test"
puts "value v : #{v}"

#each array
v = [1, 2, 3]
v.each {|x| puts x}

#each array with other way
v = [1, 2, 3]
v.each do |x| 
	puts x
end

#while
i = 0
while i<=20 do
	puts i
	i += 1
end

#repeat until
i = 0
until i==20 do
	puts i
	i += 1
end

#for
for i in 0..20
	puts i
end

#times
i = 0
20.times do
	puts i
	i += 1 #it same about i = i+1
end

#loop
i = 20
loop do
  i -= 1
  next if i>=19 
  puts "#{i}"
  break if i <= 0
end

#in ruby array can write with hash syntax
php: x = array();
	or just x = [];
ruby x = Hash.new() #remember Hash write with capitalize!
	or just x = Hash.new
	or just x = {}

#array with key
x = {
	"red" => "merah"
	"green" => "hijau"
	"black" => "hitam"
}

#array multidimensional
x = [[1, 2, 3], ["iam", "dark", "king"]]

#write array multidimensional
x.each {|n,v| puts "number: "+n+" value: #{v}\n"}

#write just one value array
x = ["red", "green", "black"]
puts x[1] #will display green

#write just one key of array multidimensional
x = {
	"red" => "merah"
	"green" => "hijau"
	"black" => "hitam"
}
puts x[red]

#write all value of array multidimensional
x = {
	"red" => "merah"
	"green" => "hijau"
	"black" => "hitam"
}
x.each do |eng,ina|
	puts ina
end

#sort array
x = [1, 4, 5, 3, 2]
x.sort! # will display [1, 2, 3, 4, 5]

#sort string
x = ["a", "c", "b", "d", "e"]
x.sort! # will display ["a", "b", "c", "d", "e"]

#sort with other way
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

books.sort! { |firstBook, secondBook| firstBook <=> secondBook }
books.sort! {|firstBook, secondBook| secondBook <=> firstBook}

#method
def name_method
	content_method
end

#method with return boolean
def is_true?
	content_method
end

#method with parameter
def welcome(name)
	return "Hello #{name}"
end

welcome("Dark King")

#to string, float, integer, simbol
i = 2
i.to_s
i.to_f
i.to_i
i.to_sym

#sorting array with method
def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"

#sorting array with simple way
def alphabetize(arr, rev=false)
    arr.sort!
    if rev
        arr.reverse!
    end
    return arr
end

numbers = [5, 1, 3, 8]

puts alphabetize(numbers)

#array with semi colon
menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}
output: {:foxes=>2, :giraffe=>1, :weezards=>17, :elves=>1, :canaries=>4, :ham=>1}

#the function semicolon
puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

output:
15100680
15100480
319848
319848

#push array with push
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
strings.each do |s|
    s = s.to_sym
    symbols.push(s)
end

easy way with this:
alphabet = ["a", "b", "c"]
alphabet << "d"

output:
["a", "b", "c", "d"]

caption = "A giraffe surrounded by "
caption << "weezards!"

output:
"A giraffe surrounded by weezards!"

#symbol not use string
movies = {
    :warkop => "comedy",
    :jumanji => "advanture"
}

#other way write symbol
movies = {
    warkop: "comedy",
    jumanji: "advanture"
}

#how fast symbol
require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."

#select the symbols
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select{|m,r| r > 3}
puts good_movies

#write just key other way
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

movie_ratings.each {|m,r| puts m}

#use unless for false
ruby_is_ugly = false

unless ruby_is_ugly
	puts "Ruby's not ugly!"
end

#this is ruby
ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

#Ternary
puts 1>0 ? "benar":"salah" #this is same with php he..he..he..

#Case
puts "Hello there!"
greeting = gets.chomp

case greeting
    when "english" then puts "Hello!"
    when "french" then puts "Bonjour!"
    when "german" then puts "Guten Tag!"   
    when "finnish" then puts "Haloo!"
    else puts "I don't know that language!"
end

#set value that nill
favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book

output:

Cat's Cradle
Cat's Cradle
Why's (Poignant) Guide to Ruby'

#write code that divisible of 2
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each {|x| puts x if x % 2 == 0  }

output: 2
4
6
8
10

#use upto
"L".upto("P") {|x| puts x }
output:
L
M
N
O
P

#many way to code
age = 26
"I am " + age.to_s + " years old."
#==> "I am 26 years old."
"I am " << age.to_s << " years old."
#==> "I am 26 years old."
"I am #{age} years old."
#==> I am 26 years old.