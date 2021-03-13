# frozen_string_literal: true

require_relative "./bundler"

module Hanami
  module CLI
    class CommandLine
      def initialize(bundler: CLI::Bundler.new)
        @bundler = bundler
        @bundler.class.require(:cli)
      end

      def call(command)
        @bundler.exec(command)
      end
    end
  end
end
