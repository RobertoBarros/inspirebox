require "test_helper"

class QuoteTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    quote = Quote.new(content: "Seize the day, put very little trust in tomorrow.", author: "Horace")
    assert quote.valid?
  end

  test "should be invalid without content" do
    quote = Quote.new(content: nil, author: "Horace")
    assert_not quote.valid?
    assert_includes quote.errors[:content], "não pode ficar em branco"
  end

  test "should be invalid without author" do
    quote = Quote.new(content: "Seize the day, put very little trust in tomorrow.", author: nil)
    assert_not quote.valid?
    assert_includes quote.errors[:author], "não pode ficar em branco"
  end

  test "should be invalid if content is too short" do
    quote = Quote.new(content: "Too short", author: "Horace")
    assert_not quote.valid?
    assert_includes quote.errors[:content], "é muito curto (mínimo: 10 caracteres)"
  end

  test "should be invalid if content is too long" do
    long_content = "A" * 501
    quote = Quote.new(content: long_content, author: "Horace")
    assert_not quote.valid?
    assert_includes quote.errors[:content], "é muito longo (máximo: 500 caracteres)"
  end
end

  test "should be invalid if author is too short" do
    quote = Quote.new(content: "Seize the day, put very little trust in tomorrow.", author: "A")
    assert_not quote.valid?
    assert_includes quote.errors[:author], "é muito curto (mínimo: 2 caracteres)"
  end

  test "should be invalid if author is too long" do
    long_author = "A" * 101
    quote = Quote.new(content: "Seize the day, put very little trust in tomorrow.", author: long_author)
    assert_not quote.valid?
    assert_includes quote.errors[:author], "é muito longo (máximo: 100 caracteres)"
  end
