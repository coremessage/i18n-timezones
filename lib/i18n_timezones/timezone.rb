module ActiveSupport
  class TimeZone
    def to_s
      offset = "UTC#{formatted_offset}"
      translated_name = I18n.t(name, scope: :timezones, default: name, separator: "\001").presence
      translated_name ? "(#{offset}) #{translated_name}" : offset
    end
  end
end
