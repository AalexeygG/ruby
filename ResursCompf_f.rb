class RecursComp
  def compile(str)
    @str,@index = to_desired_view(str),0
    compileF
  end

  private

  def to_desired_view(str)
    ans_str = ""
    str = str.gsub(" ", "")
    count = 0
    while count <= str.length - 1
      if str[count] == "/"
        if str[count + 1] == "*"
          count += 2
          while str[count] != "*"
            count += 1
          end
          count += 2
        elsif str[count + 1] == "/"
          break
        end
      end
      ans_str += str[count]
      count += 1
    end
    return ans_str
  end

  def compileF
    compileT
    return if @index >= @str.length
    cur = @str[@index].chr
    if cur == '+' or cur == '-'
      @index += 1
      compileF
      print "#{cur} "
    end
  end
  def compileT
    compileM
    return if @index >= @str.length
    cur = @str[@index].chr
    if cur == '*' or cur == '/' or cur == "%"
      @index += 1
      compileT
      print "#{cur} "
    end
  end
  def compileM
    if @str[@index].chr == '(' or @str[@index].chr == '[' or @str[@index].chr == '{'
      @index += 1
      compileF
      @index += 1
    else
      compileV
    end
  end
  def compileV
    print "#{@str[@index].chr} "
    @index += 1
  end
end

c = RecursComp.new
while true
  print "Введите формулу: "
  c.compile(readline.chomp)
  print "\n"
end

