require "json"
require "memoist"

module ScalewayData
  class Error < StandardError; end
  extend Memoist

  def organization
    ENV['SCW_DEFAULT_ORGANIZATION_ID'] || raise("Unable to look up scaleway organization_id")
  end
  memoize :organization

  def project
    ENV['SCW_DEFAULT_PROJECT_ID'] || raise("Unable to look up scaleway project_id")
  end
  memoize :project

  def region
    ENV['SCW_DEFAULT_REGION'] || 'fr-par'
  end
  memoize :region

  def zone
    ENV['SCW_DEFAULT_ZONE'] || 'fr-par-1'
  end
  memoize :zone

  extend self
end
