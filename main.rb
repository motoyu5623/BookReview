require './write_review.rb'
require './display_review.rb'


LINE = "_____________________"
class BookReview
  WRITE_REVIEW = 0
  DISPLAY_REVIEW = 1
  END_PROGRAM = 2
end



posts = []

while true do
  puts "実行したい処理の番号を入力してください"
  puts "投稿レビュー数： #{posts.length}"
  puts "[#{BookReview::WRITE_REVIEW}] 本のレビューを書く"
  puts "[#{BookReview::DISPLAY_REVIEW}] 本のレビューを見る"
  puts "[#{BookReview::END_PROGRAM}] プログラムを終了する\n#{LINE}"

  operation = gets.chomp.to_i

  case operation
  when BookReview::WRITE_REVIEW
    write_review(posts)
  when BookReview::DISPLAY_REVIEW
    display_review(posts)
  when BookReview::END_PROGRAM
    exit
  else
    puts "入力値が正しくありません"
  end

end