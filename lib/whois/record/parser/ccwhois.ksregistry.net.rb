#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2015 Simone Carletti <weppos@weppos.net>
#++


require 'whois/record/parser/base_shared3'


module Whois
  class Record
    class Parser


      # Parser for the ccwhois.ksregistry.net server.
      #
      # @see Whois::Record::Parser::Example
      #   The Example parser for the list of all available methods.
      #
      class CcwhoisKsregistryNet < BaseShared3
      end

    end
  end
end
