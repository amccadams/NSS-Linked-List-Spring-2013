class LinkedListItem
  include Comparable
  attr_reader :next_list_item
  attr_reader :payload

  def initialize( something )
    @payload = something
  end

  def next_list_item=(linked_list_item)
    if self === linked_list_item
      raise ArgumentError
    end
    @next_list_item = linked_list_item
  end

  def last?
    @next_list_item.nil?
  end

  def === other_item
    self.object_id == other_item.object_id
  end

  def <=> other

    # Comparators return -1, 0, or 1 to indicate > , ==, or <
    # Precedence: integers, then strings, then symbols (each sorted
    # individually)
    if self.payload.class == other.payload.class
      # I implemented this basic comparison for you.
      return self.payload <=> other.payload
    end
    #0
    class_of_first = self.payload.class
    class_of_second = other.payload.class
    if class_of_first == Symbol && class_of_second == String 
       1
    elsif class_of_first == String && class_of_second == Symbol
      -1
    # elsif class_of_first == Symbol && class_of_second == Symbol 
    #   0
    # elsif class_of_first == String && class_of_second == String
    #    0
    elsif class_of_first == Fixnum && class_of_second == String
      -1
    elsif class_of_first == String && class_of_second ==Fixnum
      1
    end
  end
     

    ## You will have to implement the logic for what to do to compare types that aren't equal.
    # 0
  # end
end
