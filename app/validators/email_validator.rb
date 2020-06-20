class EmailValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    unless /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i.match?(value)
      record.errors[attribute] << (options[:message] || 'неверный email')
      return
    end

    domain = value.split('@').last
    return if DnsCheck.new(SimpleIDN.to_ascii(domain)).mx?

    record.errors[attribute] << (options[:message] || 'почтовый сервер не существует')
  end

end
