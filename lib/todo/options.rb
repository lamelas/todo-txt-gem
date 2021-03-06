module Todo
  # Options for default preferences and library settings that can be customized
  # by clients of the gem.
  class Options
    # Require all done tasks to have a `completed_on` date. True by default.
    #
    # - When `true`, tasks with invalid dates are considered not done.
    # - When `false`, tasks starting with `x ` are considered done.
    #
    # Example:
    #
    #   Todo.customize do |opts|
    #     opts.require_completed_on = false
    #   end
    #
    #   task = Todo::Task.new("x This is done!")
    #   task.done? # => true
    #
    # @return [Boolean]
    attr_accessor :require_completed_on

    # PENDING
    #
    # Whether or not to preserve original field order for roundtripping.
    #
    # @return [Boolean]
    attr_accessor :maintain_field_order

    def initialize
      reset
    end

    # Reset to defaults.
    def reset
      @require_completed_on = true
      @maintain_field_order = false
    end
  end
end
