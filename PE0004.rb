#check palindrome
class String
  def is_palindrome?
    self.reverse.eql?(self)
  end
end

def find_palindrome_products
  palindromes = []
  n = m = 999
  n.downto(0) { |i|
    m.downto(0) { |j|
      product = i*j
      palindromes.push(product) if product.to_s.is_palindrome?
    }
  }
  palindromes
end

palindromes = find_palindrome_products
puts palindromes.sort.pop
