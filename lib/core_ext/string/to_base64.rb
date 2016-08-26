require 'base64'

class String
  def to_base64
    Base64.strict_encode64 self
  end

  def unpack_base64
    Base64.decode64 self
  end
end
