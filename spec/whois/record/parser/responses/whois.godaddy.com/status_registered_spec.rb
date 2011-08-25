# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.godaddy.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.godaddy.com.rb'

describe Whois::Record::Parser::WhoisGodaddyCom, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.godaddy.com/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#status" do
    it do
      lambda { @parser.status }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("02-Mar-99")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("21-Oct-10")
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("02-Mar-19")
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(_registrar)
      @parser.registrar.id.should           == nil
      @parser.registrar.name.should         == "GoDaddy.com, Inc."
      @parser.registrar.url.should          == "http://www.godaddy.com"
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].name.should         == "GoDaddy.com, Inc."
      @parser.registrant_contacts[0].organization.should == ""
      @parser.registrant_contacts[0].address.should      == "14455 N Hayden Rd Suite 219"
      @parser.registrant_contacts[0].city.should         == "Scottsdale"
      @parser.registrant_contacts[0].zip.should          == "85260"
      @parser.registrant_contacts[0].state.should        == "Arizona"
      @parser.registrant_contacts[0].country.should      == "United States"
      @parser.registrant_contacts[0].phone.should        == nil
      @parser.registrant_contacts[0].fax.should          == nil
      @parser.registrant_contacts[0].email.should        == nil
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(_contact)
      @parser.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].name.should         == "GoDaddy.com, Inc., GoDaddy.com, Inc."
      @parser.admin_contacts[0].organization.should == "GoDaddy.com, Inc."
      @parser.admin_contacts[0].address.should      == "14455 N Hayden Rd Suite 219"
      @parser.admin_contacts[0].city.should         == "Scottsdale"
      @parser.admin_contacts[0].zip.should          == "85260"
      @parser.admin_contacts[0].state.should        == "Arizona"
      @parser.admin_contacts[0].country.should      == "United States"
      @parser.admin_contacts[0].phone.should        == "+1.4805058800"
      @parser.admin_contacts[0].fax.should          == "+1.4805058844"
      @parser.admin_contacts[0].email.should        == "dns@jomax.net"
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(_contact)
      @parser.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].name.should         == "GoDaddy.com, Inc., GoDaddy.com, Inc."
      @parser.technical_contacts[0].organization.should == "GoDaddy.com, Inc."
      @parser.technical_contacts[0].address.should      == "14455 N Hayden Rd Suite 219"
      @parser.technical_contacts[0].city.should         == "Scottsdale"
      @parser.technical_contacts[0].zip.should          == "85260"
      @parser.technical_contacts[0].state.should        == "Arizona"
      @parser.technical_contacts[0].country.should      == "United States"
      @parser.technical_contacts[0].phone.should        == "+1.4805058800"
      @parser.technical_contacts[0].fax.should          == "+1.4805058844"
      @parser.technical_contacts[0].email.should        == "dns@jomax.net"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(3).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "CNS1.SECURESERVER.NET"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "CNS2.SECURESERVER.NET"
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "CNS3.SECURESERVER.NET"
    end
  end
end
