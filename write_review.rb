def write_review(posts)
  post = {}
  puts "本のタイトルを入力してください"
  post[:title] = gets.chomp

  puts "本の評価（１〜５）を入力してください"
  post[:point] = gets.chomp.to_i

  if post[:point] < 1 || post[:point] > 5
    puts "評価は１〜５で入力してください"
    return
  end

  puts "本の感想を一言入力してください"
  post[:review] = gets.chomp

  posts << post
end
