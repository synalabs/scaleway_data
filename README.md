# ScalewayData

Simple library to get current scaleway data like project and region.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'scaleway_data'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install scaleway_data

## Usage

```ruby
ScalewayData.organization
ScalewayData.project
ScalewayData.region
ScalewayData.zone
```

## Precedence

This library will return project, region and zone info using different sources with this precedence:

1. Environment variables: SCW_DEFAULT_ORGANIZATION_ID, SCW_DEFAULT_PROJECT_ID, SCW_DEFAULT_REGION, SCW_DEFAULT_ZONE
2. Defaults: region=fr-par and zone=fr-par-1

### 1. Environment variables

The environment variables take the highest precedence:

SCW_DEFAULT_ORGANIZATION_ID, SCW_DEFAULT_PROJECT_ID, SCW_DEFAULT_REGION, SCW_DEFAULT_ZONE

### 2. Defaults

The library will fallback to default values when it's unable to lookup the region and zone. The default values are:

    region=fr-par
    zone=fr-par-1

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/synalabs/scaleway_data.
