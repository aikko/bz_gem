require "baozhao_gem/version"

module BaozhaoGem
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def baozhao_gem
      include RenameUrl::InstanceMethods
    end
  end

  module InstanceMethods
    def to_param
      "#{id}_#{title}"
    end
  end
end
