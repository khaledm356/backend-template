class DateConverter
    require 'date'

    def convert(date)
        new_date = Date.parse(date)
        return new_date.strftime("%-m/%-d/%Y")
    end
end