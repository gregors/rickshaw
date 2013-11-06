class String
  def to_sha1
    Digest::SHA1.hexdigest self
  end
end
