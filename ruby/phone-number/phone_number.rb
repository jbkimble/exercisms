class PhoneNumber

    def self.clean(phone_number)
      cleaned = phone_number.gsub(/[^\d]/, '')
      cleaned[0] = ''  if cleaned[0,1] == "1"
      return nil if cleaned.length != 10
      return nil if cleaned[3] == ('0' || '1')
      return cleaned
    end

end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
