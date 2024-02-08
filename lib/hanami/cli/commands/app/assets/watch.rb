# frozen_string_literal: true

require_relative "command"
require_relative "../../../interactive_system_call"

module Hanami
  module CLI
    module Commands
      module App
        module Assets
          # Watches for asset changes within each slice.
          #
          # @since 2.1.0
          # @api private
          class Watch < Assets::Command
            desc "Start assets watch mode"

            # @since 2.1.0
            # @api private
            def initialize(config: app.config.assets, system_call: InteractiveSystemCall.new(exit_after: false), **opts)
              super(config: config, system_call: system_call, **opts)
            end

            private

            # @since 2.1.0
            # @api private
            def assets_command(slice)
              super + ["--watch"]
            end
          end
        end
      end
    end
  end
end
