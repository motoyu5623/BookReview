def display_review(posts)
  index = 0
  posts.each do |post|
    puts "[#{index}] #{post[:title]}"
    index += 1
  end

  puts "見たいレビューの番号を入力してください"
  input  = gets.chomp.to_i
  if input < index
    item = posts[input]
  else
    puts "正しいレビュー番号を入力してください"
    return
  end

  puts LINE
  puts "タイトル： #{item[:title]}"
  puts "評価： #{item[:point]}"
  puts "感想： #{item[:review]}"
  puts LINE
end
