class Compact

  attr_reader :url ,:link_model


  def initialize(url,link_model=Link)
    @url=url
    @link_model=link_model

  end


  def get_unique_code
    SecureRandom.uuid[0..7]

  end


  def hashed_code
      loop do
          code =get_unique_code
      break code unless link_model.exists?(hash_code:code )
     end
  end


  def generate_hash_link
    hashed_value =hashed_code
    link_model.create(original_url:url ,hash_code:hashed_value)
    hashed_value
  end

end