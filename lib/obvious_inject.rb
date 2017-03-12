require "obvious_inject/version"

module ObviousInject
  InjectContainer = Struct.new(:memo, :item)
end

module Enumerable
  def obvious_inject(initial, &block)
    container = ObviousInject::InjectContainer.new

    self.inject(initial) do |memo, item|
      container.memo = memo
      container.item = item

      block.call(container)
    end
  end
end
