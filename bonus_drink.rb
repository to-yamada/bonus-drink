class BonusDrink
  # 買った瓶数をamount、おまけ瓶数をbonus、計をtotalとすると
  # amount, bonus, total
  #       1,    0,     1
  #       2,    0,     2
  #       3,    1,     4
  #       4,    1,     5
  #       5,    2,     7
  #       6,    2,     8
  #       7,    3,    10
  #       8,    3,    11
  #       9,    4,    13
  #      10,    4,    14
  #      11,    5,    16
  # となる。買った瓶が2増えるにつれておまけは1ずつ増えていることがわかる。
  # 
  # これは買った瓶を○、おまけの瓶を●とすると
  # ○○○
  #     ↓
  #     ●○○
  #         ↓
  #         ●○○
  #             ↓
  #             ●
  # というようにおまけ1本に買った瓶2本をセットにすることでおまけがもう1本
  # もらえるためである。
  # 
  # プログラムとしては整数の除算による切り捨てを用いて
  #   bonus = (amount - 1).div(2)
  # で求めることができる。
  def self.total_count_for(amount)
    if amount > 0
      bonus = (amount - 1).div(2)
      amount + bonus
    else
      0
    end
  end
end
