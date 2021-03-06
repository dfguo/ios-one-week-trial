module MessageDsl::Share

class Meta < BasicObject
  attr_accessor :_status, :_dev_message, :_user_message_i18n_key, :_user_message_i18n_interpolations, :_user_message_plain
  def initialize(parent, status)
    @parent = parent
    @status = status
  end
  def root
    @parent
  end
  def dev_message(*args, &block)
    self._dev_message = args.length > 0 ? args[0] : root.instance_eval(&block)
  end
  def user_message
    @user_message ||= UserMessage.new(self)
  end
  def valid?
    @status == :ok or _dev_message.present? or _user_message_i18n_key.present? or _user_message_plain.present?
  end
end

end