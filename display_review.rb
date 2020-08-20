def display_review(posts)
  index = 0
  posts.each do |post|
    puts "[#{index}] #{post[:title]}"
    index += 1
  end

  puts "見たいレビューの番号を入力してください"
  input  = gets.chomp.to_i
  item = posts[input]

  puts LINE
  puts "タイトル： #{item[:title]}"
  puts "評価： #{item[:point]}"
  puts "感想： #{item[:review]}"
  puts LINE
end
