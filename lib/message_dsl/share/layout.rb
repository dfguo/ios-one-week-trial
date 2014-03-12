module MessageDsl::Share
  module Layout

    include HashHelper

    def render_with_layout meta, data={}
      {
        status: meta._status,
        meta: {
          devMessage: meta._dev_message,
          userMessage: {
            i18n: {
              key: meta._user_message_i18n_key,
              interpolations: camelize_hash_keys!(meta._user_message_i18n_interpolations)
            },
            plain: meta._user_message_plain
          }
        },
        data: camelize_hash_keys!(data)
      }.to_json
    end
    
  end  

end
