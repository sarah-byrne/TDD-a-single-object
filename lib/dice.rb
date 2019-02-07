class Dice
  def roll
    rand(6) + 1
  end

  def roll_some_dice(quantity)
    results = []
    quantity.times {results.push(roll)}
    return results
  end
end
