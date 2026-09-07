# 「定数」の解答をここに書きます。
class PriceCalculator
  TAX_RATE = 0.1

  def with_tax(price)
    price + price * TAX_RATE
  end
end

price = PriceCalculator.new
puts "税込み価格: #{price.with_tax(1000).round}円"


class Game
  MAX_PLAYERS = 4
  def max_players
    MAX_PLAYERS
  end
end

game = Game.new
puts "最大プレイヤー数: #{game.max_players}人"