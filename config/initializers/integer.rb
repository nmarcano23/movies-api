# frozen_string_literal: true

# added to roman method for integer class
class Integer
  letters = %w[M D C L X IX IV V I]
  values = [1000, 500, 100, 50, 10, 9, 4, 5, 1]
  LETTERS = letters.zip values

  def to_roman
    n = self
    c = 0
    LETTERS.map { |l, v| c, n = n.divmod v; l * c }.join ''
  end
end
