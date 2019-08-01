# frozen_string_literal: true

module Stripe
  module Radar
    class EarlyFraudWarning < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "radar.early_fraud_warning".freeze
    end
  end
end
