require 'util/connect'

module Get

  def initialize
    @url = ''
  end

  def get(id)
    response = Culqi.connect(@url+id+'/', Culqi.api_key, nil, 'get')
    return response.read_body
  end

end