require 'ruby-progressbar/output'

class   ProgressBar
module  Outputs
class   Null < Output
  DEFAULT_FORMAT_STRING = '%t: |%B|'.freeze
  
  alias refresh_with_format_change with_refresh

  def clear;        end
  def log(_string); end
  def refresh(*);   end

  def clear_string
    ''
  end

  def bar_update_string
    ''
  end

  def default_format
    DEFAULT_FORMAT_STRING
  end

  def resolve_format(other_format)
    other_format || default_format
  end

  def eol
    ''
  end
end
end
end
