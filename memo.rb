require "csv"

puts "1(新規でメモを作成)2(既存のメモを編集する)"

memo_type = gets.to_i

if memo_type == 1
    puts  "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp

    puts "メモを入力してください。入力後、Ctrl + D で保存します"
    memo = STDIN.read
    CSV.open("#{file_name}.csv","a") do |csv|
    csv.puts ["#{memo}"]
end

elsif memo_type == 2
    puts  "編集したいファイル名を入力してください"
    file_name = gets.chomp

    puts "メモを入力してください。入力後、Ctrl + D で保存します"
    memo = STDIN.read
    CSV.open("#{file_name}.csv","a") do |csv|
    csv.puts ["#{memo}"]
end

else
    puts "１か２を入力してください"
end
 