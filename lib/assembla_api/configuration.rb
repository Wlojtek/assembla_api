# encoding: utf-8

require 'assembla_api/api/config'

module Assembla
  # Stores the configuration
  class Configuration < API::Config

    # Other adapters are :typhoeus, :patron, :em_synchrony, :excon, :test
    property :adapter, default: :net_http

    # By default, don't traverse the page links
    property :auto_pagination, default: false

    # Basic authentication
    property :basic_auth

    # By default, don't set an application key
    property :client_id

    # By default, don't set an application secret
    property :client_secret

    # By default, don't set an api key
    property :api_key

    # By default, don't set an api secret
    property :api_secret

    # By default, don't set a user oauth access token
    property  :oauth_token

    # The api endpoint used to connect to Assembla if none is set
    property  :endpoint, default: 'https://api.assembla.com/v1'.freeze

    # The web endpoint used to connect to Assembla if none is set
    property  :site, default: 'https://www.assembla.com'.freeze

    # The default SSL configuration
    property  :ssl, default: {
      :ca_file => File.expand_path('../ssl_certs/cacerts.pem', __FILE__)
    }

    # By default the Accept header will make a request for JSON
    property  :mime_type

    # The value sent in the http header for 'User-Agent' if none is set
    property  :user_agent, default: "Assembla API Ruby Gem #{Assembla::VERSION::STRING}".freeze

    # By default uses the Faraday connection options if none is set
    property  :connection_options, default: {}

    # Global repository name
    property :repo

    property :user

    # TODO Portfolio
    property :org

    property :login

    property :password

    # By default display 30 resources
    property :per_page, default: 30

    # Add Faraday::RackBuilder to overwrite middleware
    property :stack
  end # Configuration
end # Assembla
