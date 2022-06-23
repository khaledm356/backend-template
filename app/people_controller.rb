class PeopleController
  require 'file_reader'

  def initialize(params)
    @params = params
  end

  def normalize
    reader = FileReader.new
    return reader.read(params)
  end

  private

  attr_reader :params
end
