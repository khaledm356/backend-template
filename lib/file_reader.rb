class FileReader
    require 'date_converter'
    require 'city_converter'

    def read(filepath)
        lines_array = []
        date_converter = DateConverter.new
        city_converter = CityConverter.new

        # read the file split and then loop on each line except for the first line and rearrange the position on the attribute in the line and remove the white spaces
        filepath[:dollar_format].split(/\n/).drop(1).map {
            |line| attributes = line.split(/[^\w\s-]/).map {|x| x.strip}
            lines_array.push("#{attributes[3]}, #{city_converter.convert(attributes[0])}, #{date_converter.convert(attributes[1])}")
        }

        filepath[:percent_format].split(/\n/).drop(1).map {
            |line| attributes = line.split(/[^\w\s-]/).map {|x| x.strip}
            lines_array.push("#{attributes[0]}, #{city_converter.convert(attributes[1])}, #{date_converter.convert(attributes[2])}")
        }        

        return lines_array.sort
    end
end