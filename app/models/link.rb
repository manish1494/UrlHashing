class Link < ApplicationRecord

   validates_presence_of :hash_code  ,:original_url
   validates_uniqueness_of :hash_code
   validate :verify_original_url



   def verify_original_url
      if !original_url.empty?
         uri=  URI.parse(original_url)
         if uri.host.nil?
           errors.add(:original_url,"Invalid url format")
         end

      end

   end



   def final_hashed_url

      uri = URI.parse(Rails.application.config.domain_path)
      return  final_url=uri+"/#{hash_code}"


   end

end

