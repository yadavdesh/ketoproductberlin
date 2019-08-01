# frozen_string_literal: true

# rubocop:disable Metrics/LineLength
# rubocop:disable Metrics/MethodLength

module Stripe
  module ObjectTypes
    def self.object_names_to_classes
      {
        # data structures
        ListObject::OBJECT_NAME => ListObject,

        # business objects
        Account::OBJECT_NAME => Account,
        AccountLink::OBJECT_NAME => AccountLink,
        AlipayAccount::OBJECT_NAME => AlipayAccount,
        ApplePayDomain::OBJECT_NAME => ApplePayDomain,
        ApplicationFee::OBJECT_NAME => ApplicationFee,
        ApplicationFeeRefund::OBJECT_NAME => ApplicationFeeRefund,
        Balance::OBJECT_NAME => Balance,
        BalanceTransaction::OBJECT_NAME => BalanceTransaction,
        BankAccount::OBJECT_NAME => BankAccount,
        BitcoinReceiver::OBJECT_NAME => BitcoinReceiver,
        BitcoinTransaction::OBJECT_NAME => BitcoinTransaction,
        Capability::OBJECT_NAME => Capability,
        Card::OBJECT_NAME => Card,
        Charge::OBJECT_NAME => Charge,
        Checkout::Session::OBJECT_NAME => Checkout::Session,
        CountrySpec::OBJECT_NAME => CountrySpec,
        Coupon::OBJECT_NAME => Coupon,
        CreditNote::OBJECT_NAME => CreditNote,
        Customer::OBJECT_NAME => Customer,
        CustomerBalanceTransaction::OBJECT_NAME => CustomerBalanceTransaction,
        Discount::OBJECT_NAME => Discount,
        Dispute::OBJECT_NAME => Dispute,
        EphemeralKey::OBJECT_NAME => EphemeralKey,
        Event::OBJECT_NAME => Event,
        ExchangeRate::OBJECT_NAME => ExchangeRate,
        File::OBJECT_NAME => File,
        File::OBJECT_NAME_ALT => File,
        FileLink::OBJECT_NAME => FileLink,
        Invoice::OBJECT_NAME => Invoice,
        InvoiceItem::OBJECT_NAME => InvoiceItem,
        InvoiceLineItem::OBJECT_NAME => InvoiceLineItem,
        IssuerFraudRecord::OBJECT_NAME => IssuerFraudRecord,
        Issuing::Authorization::OBJECT_NAME => Issuing::Authorization,
        Issuing::Card::OBJECT_NAME => Issuing::Card,
        Issuing::CardDetails::OBJECT_NAME => Issuing::CardDetails,
        Issuing::Cardholder::OBJECT_NAME => Issuing::Cardholder,
        Issuing::Dispute::OBJECT_NAME => Issuing::Dispute,
        Issuing::Transaction::OBJECT_NAME => Issuing::Transaction,
        LoginLink::OBJECT_NAME => LoginLink,
        Order::OBJECT_NAME => Order,
        OrderReturn::OBJECT_NAME => OrderReturn,
        PaymentIntent::OBJECT_NAME => PaymentIntent,
        PaymentMethod::OBJECT_NAME => PaymentMethod,
        Payout::OBJECT_NAME => Payout,
        Person::OBJECT_NAME => Person,
        Plan::OBJECT_NAME => Plan,
        Product::OBJECT_NAME => Product,
        Radar::EarlyFraudWarning::OBJECT_NAME => Radar::EarlyFraudWarning,
        Radar::ValueList::OBJECT_NAME => Radar::ValueList,
        Radar::ValueListItem::OBJECT_NAME => Radar::ValueListItem,
        Recipient::OBJECT_NAME => Recipient,
        RecipientTransfer::OBJECT_NAME => RecipientTransfer,
        Refund::OBJECT_NAME => Refund,
        Reporting::ReportRun::OBJECT_NAME => Reporting::ReportRun,
        Reporting::ReportType::OBJECT_NAME => Reporting::ReportType,
        Reversal::OBJECT_NAME => Reversal,
        Review::OBJECT_NAME => Review,
        SKU::OBJECT_NAME => SKU,
        SetupIntent::OBJECT_NAME => SetupIntent,
        Sigma::ScheduledQueryRun::OBJECT_NAME => Sigma::ScheduledQueryRun,
        Source::OBJECT_NAME => Source,
        SourceTransaction::OBJECT_NAME => SourceTransaction,
        Subscription::OBJECT_NAME => Subscription,
        SubscriptionItem::OBJECT_NAME => SubscriptionItem,
        SubscriptionSchedule::OBJECT_NAME => SubscriptionSchedule,
        SubscriptionScheduleRevision::OBJECT_NAME => SubscriptionScheduleRevision,
        TaxId::OBJECT_NAME => TaxId,
        TaxRate::OBJECT_NAME => TaxRate,
        Terminal::ConnectionToken::OBJECT_NAME => Terminal::ConnectionToken,
        Terminal::Location::OBJECT_NAME => Terminal::Location,
        Terminal::Reader::OBJECT_NAME => Terminal::Reader,
        ThreeDSecure::OBJECT_NAME => ThreeDSecure,
        Token::OBJECT_NAME => Token,
        Topup::OBJECT_NAME => Topup,
        Transfer::OBJECT_NAME => Transfer,
        UsageRecord::OBJECT_NAME => UsageRecord,
        UsageRecordSummary::OBJECT_NAME => UsageRecordSummary,
        WebhookEndpoint::OBJECT_NAME => WebhookEndpoint,
      }
    end
  end
end

# rubocop:enable Metrics/LineLength
# rubocop:enable Metrics/MethodLength
