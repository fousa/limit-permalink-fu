module PermalinkFu
  module InstanceMethods
    def create_common_permalink
      # return unless should_create_permalink?
      if read_attribute(self.class.permalink_field).to_s.empty?
        send("#{self.class.permalink_field}=", create_permalink_for(self.class.permalink_attributes))
      end
      limit   = self.class.permalink_options[:limit].present? ? self.class.permalink_options[:limit] : self.class.columns_hash[self.class.permalink_field].limit
      base    = send("#{self.class.permalink_field}=", read_attribute(self.class.permalink_field)[0..limit - 1])
      [limit, base]
    end
  end
end