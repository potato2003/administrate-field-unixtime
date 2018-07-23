require "administrate/field/base"
require 'rails'

module Administrate
  module Field
    class Unixtime < Administrate::Field::Base
      def to_s
        return '-' unless data

        pretty
      end

      def pretty
        return unless data
        ::Time.at(data).to_s
      end

      class Engine < ::Rails::Engine; end
    end
  end
end
Unixtime = Administrate::Field::Unixtime
