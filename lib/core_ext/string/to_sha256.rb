class String
  def to_sha256
    Digest::SHA256.hexdigest self
  end
end
