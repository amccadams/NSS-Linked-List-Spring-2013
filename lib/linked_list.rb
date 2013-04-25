require 'linked_list_item'

class LinkedList
  attr_reader :first_item

  def initialize *args
  end

  def add_item(payload)
    next_item = LinkedListItem.new(payload)
    if @first_item.nil?
      @first_item = next_item
    else
      final_item = @first_item
      until final_item.last?
        final_item = final_item.next_list_item
      end
      final_item.next_list_item = next_item
    end        
  end

  def get(n)
    item = @first_item  
    n.times do 
      raise IndexError, "Index Error" if item.nil?
     item = item.next_list_item  
  end
   item.payload  
  end 

  def last
    item = @first_item
    return nil if item.nil?
    until item.next_list_item.nil?
      item = item.next_list_item
  end
  item.payload
end

  def size
    item = @first_item
    size=0
    until item.nil?
    item = item.next_list_item
    size += 1
    end 
    size
  end

  def to_s
    current_item = @first_item 
    payloads = ""
    while current_item 
      payloads += " "
      payloads += current_item.payload
      payloads += ","  unless current_item.last?
      current_item = current_item.next_list_item
      end
    "|#{payloads} |"
  end

  # ========= Bonus ========== #

   def [](payload)
  end

  def []=(n, payload)
  end

  def remove(n)
  end

    # ========= Index exercise ========== #

    def indexOf(index_payload)
      i = 0
      if @first_item.nil?
        return nil
      end
        item = @first_item
         until index_payload == item.payload
          item = item.next_list_item
          i+=1
          if item.nil? 
            return nil
          end
        end
     
      i
    end
      # ========= Sorting Exercise ========== #

  def sorted? 
    # i = 0
    item = @first_item
    if item.nil?
      return true
    end
  end

  def sort
  end

  # This is a helper I implemented
  def swap_with_next i
  end

end
