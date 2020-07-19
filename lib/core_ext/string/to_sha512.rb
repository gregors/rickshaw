class String
  def to_sha512
    Digest::SHA512.hexdigest self
  end
end
