module MyEnumerable
  ERROR_MESSAGE = 'Method requires a block'.freeze

  def all?
    raise Exception, ERROR_MESSAGE unless block_given?

    each_num do |num|
      return false unless yield num
    end
    true
  end
end
