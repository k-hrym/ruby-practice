require 'date'

  def monthly_calendar(this_day = Date.today) #実行日の日付
    # 実行月の1日を抜きだす
    first_day = Date.new(this_day.year,this_day.month,1)
    # 月の最初の週の日曜日(カレンダー上で左上)に該当する日を抜き出す
    start_day = first_day - first_day.strftime('%w').to_i

    # month year
    puts this_day.strftime('%B %Y').center(21)
    # weekdays
    puts "\sSu\sMo\sTu\sWe\sTh\sFr\sSa"
    # days
    while start_day.month <= first_day.month

      if start_day.month != first_day.month
        print "\s\s\s"
      elsif start_day.strftime('%u') == "6"
        print "\s" + start_day.strftime('%e') + "\n"
      else
        print "\s" + start_day.strftime('%e')
      end

      start_day += 1
    end

  end

puts monthly_calendar

puts monthly_calendar(Date.new(1995,8)) #任意の月だけ指定もできる