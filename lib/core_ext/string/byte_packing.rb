class String
  def packed_bytes
    [self].pack('H*')
  end

  def unpacked_bytes
    self.unpack('H*').first
  end
end
