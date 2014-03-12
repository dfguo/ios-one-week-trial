
module HashHelper

  def camelize_hash_keys!(object)
    if object.is_a? Hash
      object.keys.each { |k| object[(k.to_s.camelize(:lower) rescue k) || k] = camelize_hash_keys!(object.delete(k)) }
    elsif object.is_a? Array
      object.each { |e| camelize_hash_keys!(e) }
    end
    object
  end

  def underscore_hash_keys!(object)
    if object.is_a? Hash
      object.keys.each { |k| object[(k.to_s.underscore rescue k) || k] = underscore_hash_keys!(object.delete(k)) }
    elsif object.is_a? Array
      object.each { |e| underscore_hash_keys!(e) }
    end
    object
  end

  def symbolize_hash_keys!(object)
    if object.is_a? Hash
      object.keys.each { |k| object[(k.to_sym rescue k) || k] = symbolize_hash_keys!(object.delete(k)) }
    elsif object.is_a? Array
      object.each { |e| symbolize_hash_keys!(e) }
    end
    object
  end

  def stringify_hash_keys!(object)
    if object.is_a? Hash
      object.keys.each { |k| object[(k.to_s rescue k) || k] = stringify_hash_keys!(object.delete(k)) }
    elsif object.is_a? Array
      object.each { |e| stringify_hash_keys!(e) }
    end
    object
  end

end